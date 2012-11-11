require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :flickr_photo_id => "MyString",
      :title => "MyString",
      :camera => nil,
      :lens => nil,
      :exposure => "MyString",
      :aperture => "MyString",
      :iso_speed => "MyString",
      :photo_url => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_flickr_photo_id", :name => "photo[flickr_photo_id]"
      assert_select "input#photo_title", :name => "photo[title]"
      assert_select "input#photo_camera", :name => "photo[camera]"
      assert_select "input#photo_lens", :name => "photo[lens]"
      assert_select "input#photo_exposure", :name => "photo[exposure]"
      assert_select "input#photo_aperture", :name => "photo[aperture]"
      assert_select "input#photo_iso_speed", :name => "photo[iso_speed]"
      assert_select "input#photo_photo_url", :name => "photo[photo_url]"
    end
  end
end
