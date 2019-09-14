class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels, id: :integer do |t|
      t.string :name,          null: false

      t.timestamps
    end
    add_index :levels, :name
  end
end
