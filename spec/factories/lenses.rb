# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lens do
    manufacturer
    lens_id "MyString"
    name "MyString"
  end
end
