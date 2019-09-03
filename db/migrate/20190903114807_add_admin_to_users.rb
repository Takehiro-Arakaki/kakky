class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    # NOTE: usersテーブルにadminのカラムを追加
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
