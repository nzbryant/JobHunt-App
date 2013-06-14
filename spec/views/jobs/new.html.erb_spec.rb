require 'spec_helper'

describe "jobs/new" do
  before(:each) do
    assign(:job, stub_model(Job,
      :github_id => "MyString",
      :title => "MyString",
      :location => "MyString",
      :type => "",
      :description => "MyString",
      :how_to_apply => "MyString",
      :company => "MyString",
      :company_url => "MyString",
      :company_logo => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jobs_path, "post" do
      assert_select "input#job_github_id[name=?]", "job[github_id]"
      assert_select "input#job_title[name=?]", "job[title]"
      assert_select "input#job_location[name=?]", "job[location]"
      assert_select "input#job_type[name=?]", "job[type]"
      assert_select "input#job_description[name=?]", "job[description]"
      assert_select "input#job_how_to_apply[name=?]", "job[how_to_apply]"
      assert_select "input#job_company[name=?]", "job[company]"
      assert_select "input#job_company_url[name=?]", "job[company_url]"
      assert_select "input#job_company_logo[name=?]", "job[company_logo]"
      assert_select "input#job_url[name=?]", "job[url]"
    end
  end
end
