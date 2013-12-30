# coding: utf-8
require 'spec_helper'

describe Photo do
  describe :assign_exif do
    before do
      lens_id = '1234'
      @lens = FactoryGirl.create(:lens, lens_id: lens_id)

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
      exif.lens_id = lens_id

      @photo_data = ActiveSupport::OrderedOptions.new
      @photo_data.info = info
      @photo_data.exif = exif

      allow(Ochiba::Flickr).to receive(:new) { @photo_data }

      @photo = FactoryGirl.build(:photo_nil, flickr_photo_id: '8178992995')
      @photo.assign_exif
    end

    it { expect(@photo.title).to eq @photo_data.info.title }
    it { expect(@photo.taken_at).to eq @photo_data.info.dates.taken }
    it { expect(@photo.exposure).to eq @photo_data.exif.exposure }
    it { expect(@photo.aperture).to eq @photo_data.exif.aperture }
    it { expect(@photo.iso_speed).to eq @photo_data.exif.iso_speed }
    it { expect(@photo.lens).to eq @lens }
    it { expect(@photo.focal_length).to eq '200' }
    it { expect(@photo.photo_url).to eq FlickRaw.url_b(@photo_data.info) }
    it { expect(@photo.photo_page_url).to eq @photo_data.info.urls[0]._content }
  end
end
