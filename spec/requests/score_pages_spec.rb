require 'spec_helper'

describe "Score pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "score creation" do
    before { visit score_path(user) }

    describe "with invalid information" do

      it "should not create a score" do
        expect { click_button "Save" }.not_to change(Score, :count)
      end

      describe "should show an error messages" do
       before { click_button "Save" }
        it { should have_content('There is a problem...') }
      end
    end

    describe "with valid information" do
      before { fill_in 'score_score_date', with: "01/10/2014" }
      it "should create a score" do
        expect { click_button "Save" }.to change(Score, :count).by(1)
      end
    end
  end
end