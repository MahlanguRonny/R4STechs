require "spec_helper"

describe StoreProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/store_products").should route_to("store_products#index")
    end

    it "routes to #new" do
      get("/store_products/new").should route_to("store_products#new")
    end

    it "routes to #show" do
      get("/store_products/1").should route_to("store_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/store_products/1/edit").should route_to("store_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/store_products").should route_to("store_products#create")
    end

    it "routes to #update" do
      put("/store_products/1").should route_to("store_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/store_products/1").should route_to("store_products#destroy", :id => "1")
    end

  end
end
