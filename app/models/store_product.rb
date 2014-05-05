class StoreProduct < ActiveRecord::Base
	default_scope :order => 'name'
	validates :name, :categoryid, :price , :quantity, :supplierid, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	#validates :name, :uniqueness => true
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	# ensure that there are no line items referencing this product
	#def ensure_not_referenced_by_any_line_item
		#if line_items.count.zero?
		#return true
		#else
		#errors[:base] << "Line Items present"
		#return false
	#end
end
