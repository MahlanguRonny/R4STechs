class StoreController < ApplicationController
  def index
  	@store_products = Product.all
  end
end
