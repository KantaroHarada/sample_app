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
    it "have the content 'static_pages/home'" do
      expect(page).to have_content "Sample App"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "SampleApp"
    end
  end


  describe "Help page" do
    before do
      visit 'static_pages/help'   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "have the content 'static_pages/help'" do
      expect(page).to have_content "Help"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "SampleApp"
    end
  end

  describe "About page" do
    before do
      visit 'static_pages/about'   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "have the content 'static_pages/about'" do
      expect(page).to have_content "About"
    end

    # タイトルが正しく表示されていること
    it "have the right title" do
      expect(page).to have_title "SampleApp"
    end
  end
end

#require 'rails_helper'

#RSpec.feature "StaticPages", type: :feature do
#  pending "add some scenarios (or delete) #{__FILE__}"
#end
