require 'spec_helper'

describe SubSectionsController do

  def mock_sub_section(stubs={})
    (@mock_sub_section ||= mock_model(SubSection).as_null_object).tap do |sub_section|
      sub_section.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all sub_sections as @sub_sections" do
      SubSection.stub(:all) { [mock_sub_section] }
      get :index
      assigns(:sub_sections).should eq([mock_sub_section])
    end
  end

  describe "GET show" do
    it "assigns the requested sub_section as @sub_section" do
      SubSection.stub(:find).with("37") { mock_sub_section }
      get :show, :id => "37"
      assigns(:sub_section).should be(mock_sub_section)
    end
  end

  describe "GET new" do
    it "assigns a new sub_section as @sub_section" do
      SubSection.stub(:new) { mock_sub_section }
      get :new
      assigns(:sub_section).should be(mock_sub_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested sub_section as @sub_section" do
      SubSection.stub(:find).with("37") { mock_sub_section }
      get :edit, :id => "37"
      assigns(:sub_section).should be(mock_sub_section)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created sub_section as @sub_section" do
        SubSection.stub(:new).with({'these' => 'params'}) { mock_sub_section(:save => true) }
        post :create, :sub_section => {'these' => 'params'}
        assigns(:sub_section).should be(mock_sub_section)
      end

      it "redirects to the created sub_section" do
        SubSection.stub(:new) { mock_sub_section(:save => true) }
        post :create, :sub_section => {}
        response.should redirect_to(sub_section_url(mock_sub_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sub_section as @sub_section" do
        SubSection.stub(:new).with({'these' => 'params'}) { mock_sub_section(:save => false) }
        post :create, :sub_section => {'these' => 'params'}
        assigns(:sub_section).should be(mock_sub_section)
      end

      it "re-renders the 'new' template" do
        SubSection.stub(:new) { mock_sub_section(:save => false) }
        post :create, :sub_section => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested sub_section" do
        SubSection.should_receive(:find).with("37") { mock_sub_section }
        mock_sub_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sub_section => {'these' => 'params'}
      end

      it "assigns the requested sub_section as @sub_section" do
        SubSection.stub(:find) { mock_sub_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:sub_section).should be(mock_sub_section)
      end

      it "redirects to the sub_section" do
        SubSection.stub(:find) { mock_sub_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(sub_section_url(mock_sub_section))
      end
    end

    describe "with invalid params" do
      it "assigns the sub_section as @sub_section" do
        SubSection.stub(:find) { mock_sub_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:sub_section).should be(mock_sub_section)
      end

      it "re-renders the 'edit' template" do
        SubSection.stub(:find) { mock_sub_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested sub_section" do
      SubSection.should_receive(:find).with("37") { mock_sub_section }
      mock_sub_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the sub_sections list" do
      SubSection.stub(:find) { mock_sub_section }
      delete :destroy, :id => "1"
      response.should redirect_to(sub_sections_url)
    end
  end

end
