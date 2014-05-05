require 'spec_helper'

describe CatalogController do

  describe "GET 'MyCatalog'" do
    it "returns http success" do
      get 'MyCatalog'
      response.should be_success
    end
  end

end
