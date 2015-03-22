require 'rails_helper'

RSpec.describe User, :type => :model do

  before :each do
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  describe "User model tests" do
    it "returns a valid user" do
      assert @user.valid?
    end

    it "ensures presence of users' username" do
      @user.name = " "
      assert_not @user.valid?
    end

    it "ensures presence of users' email" do
      @user.email = " "
      assert_not @user.valid?
    end


    it "ensures username is not too long" do
      @user.name = "a" * 51
      assert_not @user.valid?
    end

    it "ensures users' email is not too long" do
      @user.email = 'a' * 244 + '@example.com'
      assert_not @user.valid?
    end

    it "ensures email validation accepts valid addresses" do
      valid_addresses = %w[user@example.com USER@foo.com A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |valid_address|
        @user.email = valid_address
        assert @user.valid?, "#{valid_address.inspect} should be valid"
      end
    end

    it "ensures email validation rejects invalid email addresses" do
      invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com]
      invalid_addresses.each do |invalid_address|
        @user.email = invalid_address
        assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
      end
    end
  end