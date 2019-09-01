class CreateSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :selects, id: :integer do |t|
      t.references :question_id,       null: false
      t.string :content,            null: false
      t.boolean :is_right,          null: false

      t.timestamps
    end
  end
end
