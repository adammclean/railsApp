describe StaticPagesController do

  it "should get home"  do
    get :home
    assert_response :success
  end

  it "should get help" do
    get :help
    assert_response :success
  end

end


# $ bundle exec rspec