class Product < ActiveRecord::Base
  attr_accessible :title, :body, :quantity, :name, :description, :selling_price, :buying_price, :category
end
