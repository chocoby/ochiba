require 'spec_helper'

describe Camera do
  describe :product_name do
    before do
      @manufacturer = FactoryGirl.create(:manufacturer)
      @camera = FactoryGirl.create(:camera, manufacturer: @manufacturer)

      @expect_name = "#{@camera.manufacturer.name} #{@camera.name}"
    end

    it { @camera.product_name.should eq @expect_name }
  end
end
