class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :level_id,         null: false
      t.string :title,             default: ''
      t.string :question_num,      null: false
      t.text :content,             null: false, default: ''
      t.text :descript,            default: ''

      t.timestamps
    end
  end
end
