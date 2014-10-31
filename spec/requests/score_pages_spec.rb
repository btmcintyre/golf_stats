require 'spec_helper'

describe "Score pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "score creation" do
    before { visit new_score_path }

    describe "with invalid information" do

      it "should not create a score" do
        expect { click_button "Save" }.not_to change(Score, :count)
      end
      
    end

    describe "with valid information" do
      before { fill_in 'date', with: "01/10/2014" }
      it "should create a score" do
        expect { click_button "Save" }.to change(Score, :count).by(1)
      end
    end
  end
end