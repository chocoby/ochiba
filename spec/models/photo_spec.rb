# coding: utf-8
require 'spec_helper'

describe Photo do
  describe :assign_exif do
    before do
      info = ActiveSupport::OrderedOptions.new
      info.title = '持桶女郎モミジ'
      info.dates = ActiveSupport::OrderedOptions.new
      info.dates.taken = DateTime.parse('2012-11-09 11:13:07')
      urls = ActiveSupport::OrderedOptions.new
      urls.type = 'photopage'
      urls._content = 'http://www.flickr.com/photos/cho_co/8178992995/'
      info.urls = [urls]

      exif = ActiveSupport::OrderedOptions.new
      exif.exposure = '1/80'
      exif.aperture = '5.0'
      exif.iso_speed = '220'
      exif.focal_length = '200.0 mm'

      @photo_data = ActiveSupport::OrderedOptions.new
      @photo_data.info = info
      @photo_data.exif = exif

      Ochiba::Flickr.stub(:new).and_return(@photo_data)

      @photo = FactoryGirl.build(:photo_nil, flickr_photo_id: '8178992995')
      @photo.assign_exif
    end

    it { @photo.title.should eq @photo_data.info.title }
    it { @photo.taken_at.should eq @photo_data.info.dates.taken }
    it { @photo.exposure.should eq @photo_data.exif.exposure }
    it { @photo.aperture.should eq @photo_data.exif.aperture }
    it { @photo.iso_speed.should eq @photo_data.exif.iso_speed }
    it { @photo.focal_length.should eq '200' }
    it { @photo.photo_url.should eq FlickRaw.url_b(@photo_data.info) }
    it { @photo.photo_page_url.should eq @photo_data.info.urls[0]._content }
  end
end
