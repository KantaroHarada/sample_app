=begin
require 'rails_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
=end

require 'rails_helper'

#Spec.describe "StaticPages", type: feature do
# pending "add some examples to (or delete) #{_FILE_}"
#end

RSpec.feature "StaticPages", type: :feature do
  describe "Home page" do
    before do
      visit 'static_pages/home'   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "have the content 'Ruby on Rails Tutorial Sample App'" do
      expect(page).to have_content "Sample App"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "Ruby on Rails Tutorial Sample App"
    end
  end


  describe "Help page" do
    before do
      visit 'static_pages/help'   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "have the content 'Help | Ruby on Rails Tutorial Sample App'" do
      expect(page).to have_content "Help"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "About page" do
    before do
      visit 'static_pages/about'   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "have the content 'About | Ruby on Rails Tutorial Sample App'" do
      expect(page).to have_content "About"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
    end
  end
end

#require 'rails_helper'

#RSpec.feature "StaticPages", type: :feature do
#  pending "add some scenarios (or delete) #{__FILE__}"
#end

