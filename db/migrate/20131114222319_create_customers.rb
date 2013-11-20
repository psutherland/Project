class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.integer :province_id
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end
