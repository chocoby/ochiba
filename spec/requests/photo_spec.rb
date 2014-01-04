require 'spec_helper'

describe "Photos" do
  describe 'Home' do
    before { visit root_path }
    it { expect(page.status_code).to be 200 }
  end

  describe 'Show' do
    let(:photo) { FactoryGirl.create(:photo) }
    before { visit photo_path(photo) }
    it { expect(page.status_code).to be 200 }
  end
end
