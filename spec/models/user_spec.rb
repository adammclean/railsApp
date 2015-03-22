require 'rails_helper'

RSpec.describe User, :type => :model do

  before :each do
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  describe "check that our User model is valid" do
    it "returns a valid user" do
      assert @user.valid?
    end

    it "ensures presence of user's username" do
      @user.name = " "
      assert_not @user.valid?
    end

    it "ensures presence of user's email" do
      @user.email = " "
      assert_not @user.valid?
    end

  end
end