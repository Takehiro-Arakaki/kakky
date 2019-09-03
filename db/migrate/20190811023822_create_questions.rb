class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions, id: :integer do |t|
      t.integer :level_id
      t.string :question
      t.integer :question_num

      t.timestamps
    end
  end
end
