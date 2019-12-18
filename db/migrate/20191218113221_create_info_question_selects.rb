class CreateInfoQuestionSelects < ActiveRecord::Migration[6.0]
  def change
    create_table :info_question_selects, id: :integer do |t|
      t.integer :question_id,   null: false
      t.text :content,          null: false
      t.boolean :answer,        null: false, default: false

      t.timestamps
    end
  end
end
