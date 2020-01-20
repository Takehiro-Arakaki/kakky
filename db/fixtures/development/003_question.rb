# frozen_string_literal: true

require 'rubyXL'

Question.destroy_all

filename = 'kaaki_XL.xlsx'
workbook = RubyXL::Parser.parse(Rails.root.join('db', 'fixtures', 'files', filename))
# 一つ目のシートの読み込み
worksheet = workbook[0]

start_row = 1 # NOTE: First line is 0

# key: default value
cols = {
  course_id: nil,
  course_name: nil,
  grade: nil,
  grade_name: nil,
  title: nil,
  question_num: nil,
  content: nil
}

col_offset = 0
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
  break if hash.blank?

  # コースIDとグレードIDからレベルを探します
  level = Level.find_by(course_id: hash[:course_id], grade: hash[:grade])

  hash.merge!(level_id: level.id)

  # レベル検索で使用したカラムは不要なためここで削除します
  except_cols.each { |key| hash.delete(key) }

  Question.find_or_create_by!(hash)

end

