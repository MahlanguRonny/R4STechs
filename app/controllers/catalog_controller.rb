class CatalogController < ApplicationController
  def MyCatalog
  	@products = StoreProduct.all
  end
end
