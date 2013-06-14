require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString",
      :github => "MyString",
      :photo => "MyString",
      :email => "MyString",
      :encrypted_password => "MyString",
      :confirmation_token => "MyString",
      :unconfirmed_email => "MyString",
      :reset_password_token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_password_confirmation[name=?]", "user[password_confirmation]"
      assert_select "input#user_github[name=?]", "user[github]"
      assert_select "input#user_photo[name=?]", "user[photo]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_encrypted_password[name=?]", "user[encrypted_password]"
      assert_select "input#user_confirmation_token[name=?]", "user[confirmation_token]"
      assert_select "input#user_unconfirmed_email[name=?]", "user[unconfirmed_email]"
      assert_select "input#user_reset_password_token[name=?]", "user[reset_password_token]"
    end
  end
end
