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
        :encrypted_password => "Encrypted Password",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :reset_password_token => "Reset Password Token"
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation",
        :github => "Github",
        :photo => "Photo",
        :email => "Email",
        :encrypted_password => "Encrypted Password",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :reset_password_token => "Reset Password Token"
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
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmation Token".to_s, :count => 2
    assert_select "tr>td", :text => "Unconfirmed Email".to_s, :count => 2
    assert_select "tr>td", :text => "Reset Password Token".to_s, :count => 2
  end
end
