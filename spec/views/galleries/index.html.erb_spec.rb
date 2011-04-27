require 'spec_helper'

describe "galleries/index.html.erb" do
  before(:each) do
    assign(:galleries, [
      stub_model(Gallery,
        :name => "Name",
        :industry_id => 1,
        :sub_section_id => 1
      ),
      stub_model(Gallery,
        :name => "Name",
        :industry_id => 1,
        :sub_section_id => 1
      )
    ])
  end

  it "renders a list of galleries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
