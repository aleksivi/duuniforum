require "spec_helper"

describe IndustriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/industries" }.should route_to(:controller => "industries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/industries/new" }.should route_to(:controller => "industries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/industries/1" }.should route_to(:controller => "industries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/industries/1/edit" }.should route_to(:controller => "industries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/industries" }.should route_to(:controller => "industries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/industries/1" }.should route_to(:controller => "industries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/industries/1" }.should route_to(:controller => "industries", :action => "destroy", :id => "1")
    end

  end
end
