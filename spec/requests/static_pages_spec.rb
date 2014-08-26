require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Golf Statistics'" do
      visit '/static_pages/home'
      expect(page).to have_content('Golf Statistics')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Golf Statistics | Home")
    end
  end
end