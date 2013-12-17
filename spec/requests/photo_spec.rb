require 'spec_helper'

describe "Photos" do
  describe 'トップページ' do
    before { visit root_path }
    it { expect(page.status_code).to be 200 }
  end
end
