require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Golf Statistics"}
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Golf Statistics')}
    it { should have_title(full_title('Home'))}
  end
end