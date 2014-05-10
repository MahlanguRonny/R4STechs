class AddQuantityToMyItem < ActiveRecord::Migration
 def self.up
		add_column :my_items, :quantity, :integer, :default => 1
end
	def self.down
		remove_column :my_items, :quantity
	end
end
