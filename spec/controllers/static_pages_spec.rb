

describe StaticPagesController do

  def setup
    @base_title = "Micro"
  end

  it "should get home"  do
    get :home
    expect(response).to render_template :home
    expect(response).to have_http_status(:success)
    assert_select "title", "Home | #{@base_title}"
  end

  it "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  it "should get about" do
    get :about
    expect(response).to have_http_status(:success)
    assert_select "title", "About | #{@base_title}"
  end
end


# $ bundle exec rspec