class CataloqController < ApplicationController
  def mycatalog
  	@components = Component.all
  end
end
