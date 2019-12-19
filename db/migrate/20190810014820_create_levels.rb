class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels, id: :integer do |t|
      t.string :name,          null: false, limit: 20
      t.string :category,      null: false, limit: 20
      t.integer :code,         null: false

      t.timestamps
    end
    add_index :levels, %i[category code], unique: true
  end
end
