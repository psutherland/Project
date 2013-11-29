class RenameColumnComics < ActiveRecord::Migration
  def up
  	rename_column :comics, :stock_quanitity, :stock_quantity
  end

  def down
  end
end
