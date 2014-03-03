require "spec_helper"

describe MainPartsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/main_parts").to route_to("main_parts#index")
    end

    it "routes to #new" do
      expect(:get => "/main_parts/new").to route_to("main_parts#new")
    end

    it "routes to #show" do
      expect(:get => "/main_parts/1").to route_to("main_parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/main_parts/1/edit").to route_to("main_parts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/main_parts").to route_to("main_parts#create")
    end

    it "routes to #update" do
      expect(:put => "/main_parts/1").to route_to("main_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/main_parts/1").to route_to("main_parts#destroy", :id => "1")
    end

  end
end
