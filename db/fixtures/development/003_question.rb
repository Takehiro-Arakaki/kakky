# frozen_string_literal: true

require 'rubyXL'

Question.destroy_all
QuestionSelect.destroy_all

filename = 'question.xlsx'
workbook = RubyXL::Parser.parse(Rails.root.join('db', 'fixtures', 'files', filename))
# 一つ目のシートの読み込み
worksheet = workbook[0]

start_row = 1 # NOTE: First line is 0

# Question_key: default value
cols = {
  course_id: nil,
  course_name: nil,
  grade: nil,
  grade_name: nil,
  title: nil,
  question_num: nil,
  content: nil,
  descript: nil
}
col_offset = 0

# QuestionSelect_key: default value
select_cols = {
  content: nil,
  answer: nil
}
select_col_offset = 8

# Questionにはないカラム
except_cols = %i[course_id course_name grade grade_name]

(start_row..).each do |row_num|
  hash = {}
  cols.each.with_index(col_offset) do |(column, default_value), idx|
    row = worksheet[row_num]
    # 何も記入がない場合ループを抜けます
    break unless row

    cel = row[idx]

    hash[column] = cel&.value || default_value
  end

  # コースIDとグレードIDからレベルを探します
  level = Level.find_by(course_id: hash[:course_id], grade: hash[:grade])
  break if level.nil?

  hash.merge!(level_id: level.id)

  # レベル検索で使用したカラムは不要なためここで削除します
  except_cols.each { |key| hash.delete(key) }

  # Question.find_or_create_by!(hash)
  question = Question.find_or_create_by!(hash)

  # ここから下はQuestionSelect
  select_hash = {}
  select_cols.each.with_index(select_col_offset) do |(column, default_value), idx|
    select_row = worksheet[row_num]
    # 何も記入がない場合ループを抜けます
    break unless select_row

    cel = select_row[idx]

    select_hash[column] = cel&.value || default_value
  end
  break if select_hash.blank?
  question.question_selects.find_or_create_by!(select_hash)

end



