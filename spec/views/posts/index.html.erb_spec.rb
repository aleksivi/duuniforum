require 'spec_helper'

describe "posts/index.html.erb" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :employer => "Employer",
        :homepage => "Homepage",
        :contact_person => "Contact Person",
        :email => "Email",
        :phone => "Phone",
        :job_title => "Job Title",
        :industry_id => 1,
        :focusing_section_id => 1,
        :description => "Description",
        :street_address => "Street Address",
        :post_number => "Post Number",
        :office => "Office",
        :country_id => "Country",
        :job_length => "Job Length",
        :job_type => "Job Type"
      ),
      stub_model(Post,
        :employer => "Employer",
        :homepage => "Homepage",
        :contact_person => "Contact Person",
        :email => "Email",
        :phone => "Phone",
        :job_title => "Job Title",
        :industry_id => 1,
        :focusing_section_id => 1,
        :description => "Description",
        :street_address => "Street Address",
        :post_number => "Post Number",
        :office => "Office",
        :country_id => "Country",
        :job_length => "Job Length",
        :job_type => "Job Type"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Homepage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Post Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Office".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Length".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
  end
end
