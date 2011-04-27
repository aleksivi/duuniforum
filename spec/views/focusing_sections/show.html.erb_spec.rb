require 'spec_helper'

describe "focusing_sections/show.html.erb" do
  before(:each) do
    @focusing_section = assign(:focusing_section, stub_model(FocusingSection,
      :name => "Name",
      :industry_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
