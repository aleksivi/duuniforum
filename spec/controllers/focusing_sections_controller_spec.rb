require 'spec_helper'

describe FocusingSectionsController do

  def mock_focusing_section(stubs={})
    (@mock_focusing_section ||= mock_model(FocusingSection).as_null_object).tap do |focusing_section|
      focusing_section.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all focusing_sections as @focusing_sections" do
      FocusingSection.stub(:all) { [mock_focusing_section] }
      get :index
      assigns(:focusing_sections).should eq([mock_focusing_section])
    end
  end

  describe "GET show" do
    it "assigns the requested focusing_section as @focusing_section" do
      FocusingSection.stub(:find).with("37") { mock_focusing_section }
      get :show, :id => "37"
      assigns(:focusing_section).should be(mock_focusing_section)
    end
  end

  describe "GET new" do
    it "assigns a new focusing_section as @focusing_section" do
      FocusingSection.stub(:new) { mock_focusing_section }
      get :new
      assigns(:focusing_section).should be(mock_focusing_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested focusing_section as @focusing_section" do
      FocusingSection.stub(:find).with("37") { mock_focusing_section }
      get :edit, :id => "37"
      assigns(:focusing_section).should be(mock_focusing_section)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created focusing_section as @focusing_section" do
        FocusingSection.stub(:new).with({'these' => 'params'}) { mock_focusing_section(:save => true) }
        post :create, :focusing_section => {'these' => 'params'}
        assigns(:focusing_section).should be(mock_focusing_section)
      end

      it "redirects to the created focusing_section" do
        FocusingSection.stub(:new) { mock_focusing_section(:save => true) }
        post :create, :focusing_section => {}
        response.should redirect_to(focusing_section_url(mock_focusing_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved focusing_section as @focusing_section" do
        FocusingSection.stub(:new).with({'these' => 'params'}) { mock_focusing_section(:save => false) }
        post :create, :focusing_section => {'these' => 'params'}
        assigns(:focusing_section).should be(mock_focusing_section)
      end

      it "re-renders the 'new' template" do
        FocusingSection.stub(:new) { mock_focusing_section(:save => false) }
        post :create, :focusing_section => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested focusing_section" do
        FocusingSection.should_receive(:find).with("37") { mock_focusing_section }
        mock_focusing_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :focusing_section => {'these' => 'params'}
      end

      it "assigns the requested focusing_section as @focusing_section" do
        FocusingSection.stub(:find) { mock_focusing_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:focusing_section).should be(mock_focusing_section)
      end

      it "redirects to the focusing_section" do
        FocusingSection.stub(:find) { mock_focusing_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(focusing_section_url(mock_focusing_section))
      end
    end

    describe "with invalid params" do
      it "assigns the focusing_section as @focusing_section" do
        FocusingSection.stub(:find) { mock_focusing_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:focusing_section).should be(mock_focusing_section)
      end

      it "re-renders the 'edit' template" do
        FocusingSection.stub(:find) { mock_focusing_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested focusing_section" do
      FocusingSection.should_receive(:find).with("37") { mock_focusing_section }
      mock_focusing_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the focusing_sections list" do
      FocusingSection.stub(:find) { mock_focusing_section }
      delete :destroy, :id => "1"
      response.should redirect_to(focusing_sections_url)
    end
  end

end
