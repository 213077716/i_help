class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string "first_name", :limit => 50,  :null => false
	  t.string "last_name",  :limit => 50,  :null => false
	  t.string "email",		 :limit => 100, :null => false, :default => ""
	  t.string "username",	 :limit => 100, :null => false
	  t.string "hashed_password", 	 :limit => 50,  :null => false 
      t.timestamps
    end
  end
  def delete
	drop_table :users
  end
end
