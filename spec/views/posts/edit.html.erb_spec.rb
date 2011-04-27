require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :employer => "MyString",
      :homepage => "MyString",
      :contact_person => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :job_title => "MyString",
      :industry_id => 1,
      :focusing_section_id => 1,
      :description => "MyString",
      :street_address => "MyString",
      :post_number => "MyString",
      :office => "MyString",
      :country_id => "MyString",
      :job_length => "MyString",
      :job_type => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => post_path(@post), :method => "post" do
      assert_select "input#post_employer", :name => "post[employer]"
      assert_select "input#post_homepage", :name => "post[homepage]"
      assert_select "input#post_contact_person", :name => "post[contact_person]"
      assert_select "input#post_email", :name => "post[email]"
      assert_select "input#post_phone", :name => "post[phone]"
      assert_select "input#post_job_title", :name => "post[job_title]"
      assert_select "input#post_industry_id", :name => "post[industry_id]"
      assert_select "input#post_focusing_section_id", :name => "post[focusing_section_id]"
      assert_select "input#post_description", :name => "post[description]"
      assert_select "input#post_street_address", :name => "post[street_address]"
      assert_select "input#post_post_number", :name => "post[post_number]"
      assert_select "input#post_office", :name => "post[office]"
      assert_select "input#post_country_id", :name => "post[country_id]"
      assert_select "input#post_job_length", :name => "post[job_length]"
      assert_select "input#post_job_type", :name => "post[job_type]"
    end
  end
end
