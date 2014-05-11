require "spec_helper"

describe CaartsController do
  describe "routing" do

    it "routes to #index" do
      get("/caarts").should route_to("caarts#index")
    end

    it "routes to #new" do
      get("/caarts/new").should route_to("caarts#new")
    end

    it "routes to #show" do
      get("/caarts/1").should route_to("caarts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/caarts/1/edit").should route_to("caarts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/caarts").should route_to("caarts#create")
    end

    it "routes to #update" do
      put("/caarts/1").should route_to("caarts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/caarts/1").should route_to("caarts#destroy", :id => "1")
    end

  end
end
