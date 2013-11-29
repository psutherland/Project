class AddColumnToComics < ActiveRecord::Migration
  def change
    add_column :comics, :url, :string
  end
end
