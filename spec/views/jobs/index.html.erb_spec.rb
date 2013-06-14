require 'spec_helper'

describe "jobs/index" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
        :github_id => "Github",
        :title => "Title",
        :location => "Location",
        :type => "Type",
        :description => "Description",
        :how_to_apply => "How To Apply",
        :company => "Company",
        :company_url => "Company Url",
        :company_logo => "Company Logo",
        :url => "Url"
      ),
      stub_model(Job,
        :github_id => "Github",
        :title => "Title",
        :location => "Location",
        :type => "Type",
        :description => "Description",
        :how_to_apply => "How To Apply",
        :company => "Company",
        :company_url => "Company Url",
        :company_logo => "Company Logo",
        :url => "Url"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "How To Apply".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Company Url".to_s, :count => 2
    assert_select "tr>td", :text => "Company Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
