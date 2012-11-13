require 'spec_helper'

describe Ochiba::Flickr do
  describe :get_info do
    before do
      @id = '8178992995'
      stub = ActiveSupport::OrderedOptions.new
      stub.id = @id

      #flickr.photos.stub!(:getInfo).with({ photo_id: @id }).and_return(stub)
      flickr.photos.stub!(:getInfo).and_return(stub)

      @ochiba_flickr = Ochiba::Flickr.new(photo_id: @id)
      ap @ochiba_flickr.get_info
    end

    it { @ochiba_flickr.get_info.id.should eq @id }
  end
end
