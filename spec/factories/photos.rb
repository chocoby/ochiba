FactoryGirl.define do
  factory :photo do
    flickr_photo_id "MyString"
    title "MyString"
    camera
    lens
    taken_at "2012-11-11 14:20:33"
    exposure "MyString"
    aperture "MyString"
    iso_speed "MyString"
    focal_length "MyString"
    photo_url "MyString"
    photo_page_url "MyString"

    factory :photo_nil do
      flickr_photo_id nil
      title nil
      camera nil
      lens nil
      taken_at nil
      exposure nil
      aperture nil
      iso_speed nil
      focal_length nil
      photo_url nil
      photo_page_url nil
    end
  end

end
