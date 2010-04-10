class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations, :force => true do |t|
      t.column :gift_id, :integer
      t.column :name, :string
      t.column :email, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
