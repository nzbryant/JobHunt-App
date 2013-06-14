require 'spec_helper'

describe User do
  
  it "should authenticate with matching username and password" do
    user = Factory(:user, :name => 'frank', :password => 'secret')
    User.authenticate('frank', 'secret').should == user
  end
  
  it "should not authenticate with incorrect password" do
    user = Factory(:user, :name => 'frank', :password => 'secret')
    User.authenticate('frank', 'incorrect').should be_nil
  end
 #  it "is invalid without a name" do
 #    expect(build(:user, name: nil)).not_to be_valid
 #  end
 
 # it "is invalid without an email" do
 #    expect(build(:user, email: nil)).not_to be_valid
 #  end

 #  it "is invalid without a password" do
 #    expect(build(:user, password: nil)).not_to be_valid
 #  end

 end 