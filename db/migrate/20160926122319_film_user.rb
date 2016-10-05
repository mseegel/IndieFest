class FilmUser < ActiveRecord::Migration
  def change
    change_table :films do |f|
      f.belongs_to :user, index: true
    end
  end


end
