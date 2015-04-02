require 'rails_helper'

RSpec.describe Micropost, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before :each do
    @user = users(:michael)
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end


  # describe "User model tests" do
  #   it "returns a valid user" do
  #     assert @user.valid?
  #   end

  describe "micropost model tests" do
    it "should be a valid micropost" do
      @micropost.should be_valid
    end

    it "should have a user id" do
      (@micropost.user_id = nil).should_not be_valid
    end

    it "should have content present" do
      @micropost.content = " "
      @micropost.should be_valid
    end

    it "should return most recent micropost first"
      expect (Micropost.first).to_equal microposts(:most_recent)

  end

end
