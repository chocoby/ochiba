require 'spec_helper'

describe "photos/show" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :flickr_photo_id => "Flickr Photo",
      :title => "Title",
      :camera => nil,
      :lens => nil,
      :exposure => "Exposure",
      :aperture => "Aperture",
      :iso_speed => "Iso Speed",
      :photo_url => "Photo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Flickr Photo/)
    rendered.should match(/Title/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Exposure/)
    rendered.should match(/Aperture/)
    rendered.should match(/Iso Speed/)
    rendered.should match(/Photo Url/)
  end
end
