class Caart < ActiveRecord::Base
	has_many :my_items, :dependent => :destroy

	def add_component(component_id)
		current_item = my_items.where(:component_id => component_id).first
			if current_item
				current_item.quantity += 1
			else
				current_item = MyItem.new(:component_id=>component_id)
				my_items << current_item
			end
		current_item
	end
end
