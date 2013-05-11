class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
	  t.string "name", :limit => 50
	  t.text "description", :limit => 500
	  t.integer "quantity"
	  t.decimal "selling_price"
	  t.decimal "buying_price" 
	  t.string "category"
      t.timestamps
    end
  end
  def delete
  drop_table :products
  end
end
