require 'spec_helper'

describe "galleries/new.html.erb" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :name => "MyString",
      :industry_id => 1,
      :sub_section_id => 1
    ).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => galleries_path, :method => "post" do
      assert_select "input#gallery_name", :name => "gallery[name]"
      assert_select "input#gallery_industry_id", :name => "gallery[industry_id]"
      assert_select "input#gallery_sub_section_id", :name => "gallery[sub_section_id]"
    end
  end
end
