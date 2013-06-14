require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Password Confirmation/)
    rendered.should match(/Github/)
    rendered.should match(/Photo/)
    rendered.should match(/Email/)
    rendered.should match(/Encrypted Password/)
    rendered.should match(/Confirmation Token/)
    rendered.should match(/Unconfirmed Email/)
    rendered.should match(/Reset Password Token/)
  end
end
