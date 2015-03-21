require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  render_views

  before :each do
    @base_title = "Micro"
  end

  describe "GET home" do
    it "returns HTTP success"  do
      get :home
      expect(response).to be_success
      assert_select "title", "Home | #{@base_title}"
    end
  end

  describe "GET help" do
    it "returns HTTP success" do
      get :help
      expect(response).to be_success
      assert_select "title", "Help | #{@base_title}"
    end
  end

  describe "GET about" do
    it "returns HTTP success" do
      get :about
      expect(response).to be_success
      assert_select "title", "About | #{@base_title}"
    end
  end

  describe "GET contact" do
    it "returns HTTP success" do
      get :contact
      expect(response).to be_success
      assert_select "title", "Contact | #{@base_title}"
    end
  end

  # integration test
  describe "layout links should have correct paths"
    it "asserts page paths are correct" do
      get :root_path
      assert template 'static_pages/home'
      assert_select 'a[href=?]', root_path, count: 2
      assert_select 'a[href=?]', help_path
      assert_select 'a[href=?]', about_path
      assert_select 'a[href=?]', contact_path
    end
  end



# $ bundle exec rspec