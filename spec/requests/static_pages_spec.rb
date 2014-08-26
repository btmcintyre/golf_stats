require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Golf Statistics"}

  describe "Home page" do

    it "should have the content 'Golf Statistics'" do
      visit '/static_pages/home'
      expect(page).to have_content('Golf Statistics')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end
end