require 'spec_helper'

describe "sub_sections/show.html.erb" do
  before(:each) do
    @sub_section = assign(:sub_section, stub_model(SubSection,
      :name => "Name",
      :section_id => 1
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
