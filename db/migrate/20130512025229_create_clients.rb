class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
	  t.string "first_name"
	  t.string "last_name"
	  t.string "address"
	  t.string "email"
	  t.string "username"
	  t.string "password"
	  t.string "balance"
      t.timestamps
    end
  end
  
  def delete
	drop_table :clients
  end
end


