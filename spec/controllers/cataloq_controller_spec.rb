require 'spec_helper'

describe CataloqController do

  describe "GET 'mycatalog'" do
    it "returns http success" do
      get 'mycatalog'
      response.should be_success
    end
  end

end
