require 'spec_helper'

describe Lens do
  describe :product_name do
    before do
      @manufacturer = FactoryGirl.create(:manufacturer)
      @lens = FactoryGirl.create(:lens, manufacturer: @manufacturer)

      @expect_name = "#{@lens.manufacturer.name} #{@lens.name}"
    end

    it { @lens.product_name.should eq @expect_name }
  end
end
