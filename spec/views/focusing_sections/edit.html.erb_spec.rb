require 'spec_helper'

describe "focusing_sections/edit.html.erb" do
  before(:each) do
    @focusing_section = assign(:focusing_section, stub_model(FocusingSection,
      :name => "MyString",
      :industry_id => 1
    ))
  end

  it "renders the edit focusing_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focusing_section_path(@focusing_section), :method => "post" do
      assert_select "input#focusing_section_name", :name => "focusing_section[name]"
      assert_select "input#focusing_section_industry_id", :name => "focusing_section[industry_id]"
    end
  end
end
