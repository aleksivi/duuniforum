require "spec_helper"

describe FocusingSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/focusing_sections" }.should route_to(:controller => "focusing_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/focusing_sections/new" }.should route_to(:controller => "focusing_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/focusing_sections/1" }.should route_to(:controller => "focusing_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/focusing_sections/1/edit" }.should route_to(:controller => "focusing_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/focusing_sections" }.should route_to(:controller => "focusing_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/focusing_sections/1" }.should route_to(:controller => "focusing_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/focusing_sections/1" }.should route_to(:controller => "focusing_sections", :action => "destroy", :id => "1")
    end

  end
end
