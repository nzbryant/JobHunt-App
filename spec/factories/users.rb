# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    password "MyString"
    password_confirmation "MyString"
    github "MyString"
    photo "MyString"
    email "MyString"
    encrypted_password "MyString"
    confirmation_token "MyString"
    confirmed_at "2013-06-14 12:12:01"
    confirmation_sent_at "2013-06-14 12:12:01"
    unconfirmed_email "MyString"
    remember_created_at "2013-06-14 12:12:01"
    reset_password_token "MyString"
    reset_password_sent_at "2013-06-14 12:12:01"
  end
end
