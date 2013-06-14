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
    
  end
end
