require 'spec_helper'

describe "galleries/show.html.erb" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :name => "Name",
      :industry_id => 1,
      :sub_section_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
