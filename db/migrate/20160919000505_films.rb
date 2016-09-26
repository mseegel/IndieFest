class Films < ActiveRecord::Migration
  def up
     change_table :films do |t|
       t.column :title, :string
     end
  end

  def down
    change_table :films do |t|
      t.column :title, :string
    end
  end
end
