class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists, :force => true do |t|
      t.column :title, :string
      t.column :css, :text
    end
  end

  def self.down
    drop_table :lists
  end
end
