require 'spec_helper'

describe Score do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @score = user.scores.build(user_id: user.id, score_date: "01/01/2014", 
    	hc: 12, score_1: 70, fairways_1: 9, greens_1: 9, putts_1: 24 )
  end

  subject { @score }

	it { should respond_to(:user_id) }
  it { should respond_to(:score_date) }
  it { should respond_to(:hc) }
  it { should respond_to(:score_1) }
  it { should respond_to(:fairways_1) }
  it { should respond_to(:greens_1) }
  it { should respond_to(:putts_1) }
  it { should respond_to(:score_2) }
  it { should respond_to(:fairways_2) }
  it { should respond_to(:greens_2) }
  it { should respond_to(:putts_2) }
  it { should respond_to(:score_3) }
  it { should respond_to(:fairways_3) }
  it { should respond_to(:greens_3) }
  it { should respond_to(:putts_3) }
  it { should respond_to(:score_4) }
  it { should respond_to(:fairways_4) }
  it { should respond_to(:greens_4) }
  it { should respond_to(:putts_4) }
  it { should respond_to(:score_5) }
  it { should respond_to(:fairways_5) }
  it { should respond_to(:greens_5) }
  it { should respond_to(:putts_5) }
  it { should respond_to(:score_6) }
  it { should respond_to(:fairways_6) }
  it { should respond_to(:greens_6) }
  it { should respond_to(:putts_6) }
  it { should respond_to(:score_7) }
  it { should respond_to(:fairways_7) }
  it { should respond_to(:greens_7) }
  it { should respond_to(:putts_7) }
  it { should respond_to(:score_8) }
  it { should respond_to(:fairways_8) }
  it { should respond_to(:greens_8) }
  it { should respond_to(:putts_8) }
  it { should respond_to(:score_9) }
  it { should respond_to(:fairways_10) }
  it { should respond_to(:greens_10) }
  it { should respond_to(:putts_10) }
  it { should respond_to(:score_11) }
  it { should respond_to(:fairways_11) }
  it { should respond_to(:greens_11) }
  it { should respond_to(:putts_11) }
  it { should respond_to(:score_12) }
  it { should respond_to(:fairways_12) }
  it { should respond_to(:greens_12) }
  it { should respond_to(:putts_12) }
  it { should respond_to(:score_13) }
  it { should respond_to(:fairways_13) }
  it { should respond_to(:greens_13) }
  it { should respond_to(:putts_13) }
  it { should respond_to(:score_14) }
  it { should respond_to(:fairways_14) }
  it { should respond_to(:greens_14) }
  it { should respond_to(:putts_14) }
  it { should respond_to(:score_15) }
  it { should respond_to(:fairways_15) }
  it { should respond_to(:greens_15) }
  it { should respond_to(:putts_15) }
  it { should respond_to(:score_16) }
  it { should respond_to(:fairways_16) }
  it { should respond_to(:greens_16) }
  it { should respond_to(:putts_16) }
  it { should respond_to(:score_17) }
  it { should respond_to(:fairways_17) }
  it { should respond_to(:greens_17) }
  it { should respond_to(:putts_17) }
  it { should respond_to(:score_18) }
  it { should respond_to(:fairways_18) }
  it { should respond_to(:greens_18) }
  it { should respond_to(:putts_18) }

	it { should be_valid }

  describe "when user_id is not present" do
    before { @score.user_id = nil }
    it { should_not be_valid }
  end

  describe "when score date is blank" do
  	before {@score.score_date = nil}
  	it { should_not be_valid }
  end


end
