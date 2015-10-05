class Product < ActiveRecord::Base
	has_one :purchase

  validates_presence_of :name, :price

end

