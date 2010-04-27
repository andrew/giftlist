class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.timestamps
      t.string :login, :null => true, :default => nil
      t.string :crypted_password, :default => nil, :null => true
      t.string :password_salt, :default => nil, :null => true
      t.string :persistence_token
      t.integer :login_count, :default => 0
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.string :last_login_ip
      t.string :current_login_ip
      t.string :oauth_token
      t.string :oauth_secret
      t.string :twitter_uid
      t.string :avatar_url
      t.string :name
    end

    add_index :users, :login
    add_index :users, :persistence_token
    add_index :users, :last_request_at
    add_index :users, :oauth_token
  end

  def self.down
    drop_table :users
  end
end
