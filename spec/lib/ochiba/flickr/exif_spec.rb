require 'spec_helper'

describe Ochiba::Flickr::Exif do
  before do
    @make = 'NIKON CORPORATION'
    @model = 'NIKON D800'
    @exposure = '1/100'
    @aperture = '8.0'
    @iso_speed = '100'
    @date_and_time_original = '2012:11:09 11:13:07'
    @exposure_bias = '-1/3'
    @focal_length = '200.0 mm'

    @exif_data = [
      {'label' => 'Make', 'raw' => @make},
      {'label' => 'Model', 'raw' => @model},
      {'label' => 'Exposure', 'raw' => @exposure},
      {'label' => 'Aperture', 'raw' => @aperture},
      {'label' => 'ISO Speed', 'raw' => @iso_speed},
      {'label' => 'Date and Time (Original)', 'raw' => @date_and_time_original},
      {'label' => 'Exposure Bias', 'raw' => @exposure_bias},
      {'label' => 'Focal Length', 'raw' => @focal_length},
    ]

    @exif_data.each_with_index do |exif, index|
      setting = ActiveSupport::OrderedOptions.new
      setting.label = exif['label']
      setting.raw = exif['raw']
      @exif_data[index] = setting
    end

    @exif = Ochiba::Flickr::Exif.new(@exif_data)
  end

  describe :hoge do
    it { @exif.hoge.should be_nil }
  end

  describe :make do
    it { @exif.make.should eq @make }
  end

  describe :exposure do
    it { @exif.exposure.should eq @exposure }
  end

  describe :aperture do
    it { @exif.aperture.should eq @aperture }
  end

  describe :iso_speed do
    it { @exif.iso_speed.should eq @iso_speed }

  describe :date_and_time_original do
    it { @exif.date_and_time_original.should eq @date_and_time_original }
  end

  describe :exposure_bias do
    it { @exif.exposure_bias.should eq @exposure_bias }
  end

  describe :focal_legth do
    it { @exif.focal_length.should eq @focal_length }
  end
 end
end
