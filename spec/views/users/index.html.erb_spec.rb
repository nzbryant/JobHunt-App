require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation",
        :github => "Github",
        :photo => "Photo",
        :email => "Email",
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation",
        :github => "Github",
        :photo => "Photo",
        :email => "Email",
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
