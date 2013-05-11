class Client < ActiveRecord::Base
  # attr_accessible :title, :body
  
  scope :name, lambda {|first, last| where ([:first_name => first, :last_name => last])}
end
