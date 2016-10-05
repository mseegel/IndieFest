class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :username, :string
      t.column :email, :string
      t.column :name, :string
      t.column :location, :string
      t.column :bio, :text
      t.column :image, :string
      t.timestamps null: false
    end

    create_table :reviews do |r|
      r.belongs_to :film, index: true
      r.belongs_to :user, index: true
      r.column :review, :text
  end
end
end
