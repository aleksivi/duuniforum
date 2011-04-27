require 'spec_helper'

describe "focusing_sections/new.html.erb" do
  before(:each) do
    assign(:focusing_section, stub_model(FocusingSection,
      :name => "MyString",
      :industry_id => 1
    ).as_new_record)
  end

  it "renders new focusing_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focusing_sections_path, :method => "post" do
      assert_select "input#focusing_section_name", :name => "focusing_section[name]"
      assert_select "input#focusing_section_industry_id", :name => "focusing_section[industry_id]"
    end
  end
end
