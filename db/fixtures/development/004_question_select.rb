# frozen_string_literal: true

require 'rubyXL'

QuestionSelect.destroy_all

filename = 'kaaki_XL.xlsx'
workbook = RubyXL::Parser.parse(Rails.root.join('db', 'fixtures', 'files', filename))
# 一つ目のシートの読み込み
worksheet = workbook[0]

start_row = 1 # NOTE: First line is 0

# key: question default value
cols = {
  course_id: nil,
  course_name: nil,
  grade: nil
}

col_offset = 0

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

  # これでquestion_selectに必要なデータが取得完了
  question = Question.find_by(level_id: level)

  # QuestionSelectのデータ投入
  select_col_offset = 8
  select_content = 8..13
  finish_cel = 20

  select_hash = {}

  12.times.with_index(select_col_offset) do |_, idx|
    select_row = worksheet[row_num]
    cel = select_row[idx]

    if select_row[select_content]
      select_hash[:content] = cel&.value || nil
    else
      select_hash[:answer] = cel&.value || 0
    end

    next if select_hash[:content].nil?

    # FIXME
    break if idx == finish_cel

    question_selects = question.question_selects.new
    selects = question_selects.dup
    selects.assign_attributes(select_hash)
    selects.save
  end

end

