class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :category
end
