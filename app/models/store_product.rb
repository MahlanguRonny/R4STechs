class StoreProduct < ActiveRecord::Base
	validates :name, :categoryid, :price , :quantity, :supplierid, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	#validates :name, :uniqueness => true
end
