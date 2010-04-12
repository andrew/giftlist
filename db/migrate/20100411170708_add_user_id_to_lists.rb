class AddUserIdToLists < ActiveRecord::Migration
  def self.up
    add_column :lists, :user_id, :integer
  end

  def self.down
    remove_column :lists, :user_id
  end
end
