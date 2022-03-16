class RenameOldTableToNewTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :admin_users, :users
  end
end
