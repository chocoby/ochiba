# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    flickr_photo_id "MyString"
    title "MyString"
    camera nil
    lens nil
    taken_at "2012-11-11 14:20:33"
    exposure "MyString"
    aperture "MyString"
    iso_speed "MyString"
    focal_length "MyString"
    photo_url "MyString"
  end
end
