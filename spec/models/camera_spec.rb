require 'spec_helper'

describe Camera do
  describe :product_name do
    let(:camera) { FactoryGirl.create(:camera) }
    let(:expected_name) { "#{camera.manufacturer.name} #{camera.name}" }

    it { expect(camera.product_name).to eq expected_name }
  end
end
