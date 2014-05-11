class Component < ActiveRecord::Base
	validates :name, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	has_many :my_items
	default_scope :order => 'name'
	before_destroy :ensure_not_referenced_by_any_my_item

	def ensure_not_referenced_by_any_my_item
		if my_items.count.zero?
		return true
		else
		errors[:base] << "My Items present"
		return false
	end
end
end