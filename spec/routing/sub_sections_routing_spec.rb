require "spec_helper"

describe SubSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/sub_sections" }.should route_to(:controller => "sub_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sub_sections/new" }.should route_to(:controller => "sub_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sub_sections/1" }.should route_to(:controller => "sub_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sub_sections/1/edit" }.should route_to(:controller => "sub_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sub_sections" }.should route_to(:controller => "sub_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sub_sections/1" }.should route_to(:controller => "sub_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sub_sections/1" }.should route_to(:controller => "sub_sections", :action => "destroy", :id => "1")
    end

  end
end
