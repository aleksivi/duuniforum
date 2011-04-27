require 'spec_helper'

describe IndustriesController do

  def mock_industry(stubs={})
    (@mock_industry ||= mock_model(Industry).as_null_object).tap do |industry|
      industry.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all industries as @industries" do
      Industry.stub(:all) { [mock_industry] }
      get :index
      assigns(:industries).should eq([mock_industry])
    end
  end

  describe "GET show" do
    it "assigns the requested industry as @industry" do
      Industry.stub(:find).with("37") { mock_industry }
      get :show, :id => "37"
      assigns(:industry).should be(mock_industry)
    end
  end

  describe "GET new" do
    it "assigns a new industry as @industry" do
      Industry.stub(:new) { mock_industry }
      get :new
      assigns(:industry).should be(mock_industry)
    end
  end

  describe "GET edit" do
    it "assigns the requested industry as @industry" do
      Industry.stub(:find).with("37") { mock_industry }
      get :edit, :id => "37"
      assigns(:industry).should be(mock_industry)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created industry as @industry" do
        Industry.stub(:new).with({'these' => 'params'}) { mock_industry(:save => true) }
        post :create, :industry => {'these' => 'params'}
        assigns(:industry).should be(mock_industry)
      end

      it "redirects to the created industry" do
        Industry.stub(:new) { mock_industry(:save => true) }
        post :create, :industry => {}
        response.should redirect_to(industry_url(mock_industry))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved industry as @industry" do
        Industry.stub(:new).with({'these' => 'params'}) { mock_industry(:save => false) }
        post :create, :industry => {'these' => 'params'}
        assigns(:industry).should be(mock_industry)
      end

      it "re-renders the 'new' template" do
        Industry.stub(:new) { mock_industry(:save => false) }
        post :create, :industry => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested industry" do
        Industry.should_receive(:find).with("37") { mock_industry }
        mock_industry.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :industry => {'these' => 'params'}
      end

      it "assigns the requested industry as @industry" do
        Industry.stub(:find) { mock_industry(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:industry).should be(mock_industry)
      end

      it "redirects to the industry" do
        Industry.stub(:find) { mock_industry(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(industry_url(mock_industry))
      end
    end

    describe "with invalid params" do
      it "assigns the industry as @industry" do
        Industry.stub(:find) { mock_industry(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:industry).should be(mock_industry)
      end

      it "re-renders the 'edit' template" do
        Industry.stub(:find) { mock_industry(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested industry" do
      Industry.should_receive(:find).with("37") { mock_industry }
      mock_industry.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the industries list" do
      Industry.stub(:find) { mock_industry }
      delete :destroy, :id => "1"
      response.should redirect_to(industries_url)
    end
  end

end
