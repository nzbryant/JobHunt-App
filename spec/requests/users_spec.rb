require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works!" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      expect(response.status).to eq(200)
    end
  end
end
