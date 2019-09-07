class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions, id: :integer do |t|
      t.integer :level_id,         null: false
      t.string :question,          null: false
      t.integer :question_num,      null: false

      t.timestamps
    end
  end
end
