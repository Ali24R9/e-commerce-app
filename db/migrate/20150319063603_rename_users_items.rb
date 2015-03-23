class RenameUsersItems < ActiveRecord::Migration
  def change
    rename_table :users_items, :purchases
  end
end
