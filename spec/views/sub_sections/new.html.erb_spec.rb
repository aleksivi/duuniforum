require 'spec_helper'

describe "sub_sections/new.html.erb" do
  before(:each) do
    assign(:sub_section, stub_model(SubSection,
      :name => "MyString",
      :section_id => 1
    ).as_new_record)
  end

  it "renders new sub_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_sections_path, :method => "post" do
      assert_select "input#sub_section_name", :name => "sub_section[name]"
      assert_select "input#sub_section_section_id", :name => "sub_section[section_id]"
    end
  end
end
