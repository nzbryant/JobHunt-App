require 'spec_helper'

describe Job do
  subject(:job) { create(:job) }
  
  it "has a valid factory" do
    expect(subject).to be_valid
  end
  
  it "is invalid without a company" do
    expect(build(:job, comapny: nil)).not_to be_valid
  end
 
 end 