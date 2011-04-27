require 'spec_helper'

describe "sub_sections/edit.html.erb" do
  before(:each) do
    @sub_section = assign(:sub_section, stub_model(SubSection,
      :name => "MyString",
      :section_id => 1
    ))
  end

  it "renders the edit sub_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_section_path(@sub_section), :method => "post" do
      assert_select "input#sub_section_name", :name => "sub_section[name]"
      assert_select "input#sub_section_section_id", :name => "sub_section[section_id]"
    end
  end
end
