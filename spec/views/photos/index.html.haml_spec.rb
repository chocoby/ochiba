require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :flickr_photo_id => "Flickr Photo",
        :title => "Title",
        :camera => nil,
        :lens => nil,
        :exposure => "Exposure",
        :aperture => "Aperture",
        :iso_speed => "Iso Speed",
        :photo_url => "Photo Url"
      ),
      stub_model(Photo,
        :flickr_photo_id => "Flickr Photo",
        :title => "Title",
        :camera => nil,
        :lens => nil,
        :exposure => "Exposure",
        :aperture => "Aperture",
        :iso_speed => "Iso Speed",
        :photo_url => "Photo Url"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Flickr Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Exposure".to_s, :count => 2
    assert_select "tr>td", :text => "Aperture".to_s, :count => 2
    assert_select "tr>td", :text => "Iso Speed".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Url".to_s, :count => 2
  end
end
