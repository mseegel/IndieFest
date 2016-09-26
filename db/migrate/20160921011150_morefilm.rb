class Morefilm < ActiveRecord::Migration
  def up
    change_table :films do |t|
      t.column :director, :string
      t.column :year, :integer
      t.column :country, :string
      t.column :tagline, :string
      t.column :synopsis, :text
      t.column :poster, :string
    end
  end

  def down
    change_table :films do |t|
      t.column :director, :string
      t.column :year, :integer
      t.column :counrty, :string
      t.column :tagline, :string
      t.column :symopsis, :text
      t.column :poster, :string
    end
  end
end
