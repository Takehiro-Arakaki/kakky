class CreateQuestionSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :question_selects, id: :integer do |t|
      t.integer :question_id,       null: false
      t.text :content,            null: false
      t.boolean :answer,          null: false, default: ''

      t.timestamps
    end
  end
end
