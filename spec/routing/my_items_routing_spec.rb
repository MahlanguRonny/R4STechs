require "spec_helper"

describe MyItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/my_items").should route_to("my_items#index")
    end

    it "routes to #new" do
      get("/my_items/new").should route_to("my_items#new")
    end

    it "routes to #show" do
      get("/my_items/1").should route_to("my_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/my_items/1/edit").should route_to("my_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/my_items").should route_to("my_items#create")
    end

    it "routes to #update" do
      put("/my_items/1").should route_to("my_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/my_items/1").should route_to("my_items#destroy", :id => "1")
    end

  end
end
