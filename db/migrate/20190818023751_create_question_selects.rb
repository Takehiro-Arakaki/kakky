class CreateQuestionSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :question_selects, id: :integer do |t|
      t.integer :question_id,       null: false
      t.string :content,            null: false
      t.boolean :is_right,          null: false

      t.timestamps
    end
  end
end
