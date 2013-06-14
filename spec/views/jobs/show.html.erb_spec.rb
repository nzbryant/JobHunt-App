require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Github/)
    rendered.should match(/Title/)
    rendered.should match(/Location/)
    rendered.should match(/Type/)
    rendered.should match(/Description/)
    rendered.should match(/How To Apply/)
    rendered.should match(/Company/)
    rendered.should match(/Company Url/)
    rendered.should match(/Company Logo/)
    rendered.should match(/Url/)
  end
end
