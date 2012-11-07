require "spec_helper"

describe CamerasController do
  describe "routing" do

    it "routes to #index" do
      get("/cameras").should route_to("cameras#index")
    end

    it "routes to #new" do
      get("/cameras/new").should route_to("cameras#new")
    end

    it "routes to #show" do
      get("/cameras/1").should route_to("cameras#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cameras/1/edit").should route_to("cameras#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cameras").should route_to("cameras#create")
    end

    it "routes to #update" do
      put("/cameras/1").should route_to("cameras#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cameras/1").should route_to("cameras#destroy", :id => "1")
    end

  end
end
