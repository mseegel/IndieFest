class Password < ActiveRecord::Migration
  def change
    change_table :users do |u|
      u.column :password_hash, :string
      u.column :password_salt, :string
    end
  end
end
