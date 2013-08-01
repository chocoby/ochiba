require 'spec_helper'

describe Lens do
  describe :product_name do
    before do
      @manufacturer = FactoryGirl.create(:manufacturer)
      @lens = FactoryGirl.create(:lens, manufacturer: @manufacturer)

      @expect_name = "#{@lens.manufacturer.name} #{@lens.name}"
    end

    it { expect(@lens.product_name).to eq @expect_name }
  end
end
