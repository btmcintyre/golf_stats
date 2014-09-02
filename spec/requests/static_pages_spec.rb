require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Golf Statistics"}
  subject { page }

  describe "Home page" do
    before { visit root_path }
		it { should have_selector('h1', text: 'Golf Statistics') }
    it { should have_title(full_title('Home'))}
  end

	it "should have the right links on the layout" do
	  visit root_path
	  expect(page).to have_title(full_title('Home'))
	  click_link "Home"
	  expect(page).to have_title(full_title('Home'))
	  click_link "Sign up now!"
	  expect(page).to have_title(full_title('Sign up'))
	  click_link "Golf Statistics"
	  expect(page).to have_title(full_title('Home'))
	end
end