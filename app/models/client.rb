require 'digest/sha1'
class Client < ActiveRecord::Base
  # attr_accessible :title, :body
    
  scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
  
  def self.hash(pass="")
	Digest::SHA1.hexdigest(pass)
  end
end

end
