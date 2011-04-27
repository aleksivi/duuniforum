require 'spec_helper'

describe "posts/show.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Homepage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Person/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Post Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Office/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Length/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Type/)
  end
end
