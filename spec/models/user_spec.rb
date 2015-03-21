require 'rails_helper'

RSpec.describe User, :type => :model do

  before :each do
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  describe "check that our User model is valid" do
    it "returns a valid user" do
      assert @user.valid?
    end
  end
end