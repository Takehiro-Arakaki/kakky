class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions, id: :integer do |t|
      t.integer :level_id,         null: false
      t.string :question_num,      null: false
      t.text :content,             null: false, default: ''

      t.timestamps
    end
  end
end
