require "spec_helper"

describe ColaboradoresController do
  describe "routing" do

    it "routes to #index" do
      get("/colaboradores").should route_to("colaboradores#index")
    end

    it "routes to #new" do
      get("/colaboradores/new").should route_to("colaboradores#new")
    end

    it "routes to #show" do
      get("/colaboradores/1").should route_to("colaboradores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/colaboradores/1/edit").should route_to("colaboradores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/colaboradores").should route_to("colaboradores#create")
    end

    it "routes to #update" do
      put("/colaboradores/1").should route_to("colaboradores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/colaboradores/1").should route_to("colaboradores#destroy", :id => "1")
    end

  end
end
