class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts, :force => true do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :url, :string
      t.column :price, :float
      t.timestamps
    end
  end

  def self.down
    drop_table :gifts
  end
end
