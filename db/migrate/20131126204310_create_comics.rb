class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name
      t.string :description
      t.string :publisher
      t.decimal :price
      t.integer :stock_quanitity

      t.timestamps
    end
  end
end
