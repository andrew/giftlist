class AddListIdToGifts < ActiveRecord::Migration
  def self.up
    add_column :gifts, :list_id, :integer
  end

  def self.down
    remove_column :gifts, :list_id
  end
end
