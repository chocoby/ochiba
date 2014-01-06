require 'spec_helper'

describe Lens do
  describe :product_name do
    let(:lens) { FactoryGirl.create(:lens) }
    let(:expected_name) { "#{lens.manufacturer.name} #{lens.name}" }

    it { expect(lens.product_name).to eq expected_name }
  end
end
