class CreateInfoQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :info_questions, id: :integer do |t|
      t.integer :level_id,            null: false
      t.string :title,                default: ''
      t.string :question_num,         null: false
      t.text :content,                null:false, default: ''

      t.timestamps
    end
  end
end
