FactoryGirl.define do
  factory :camera do
    manufacturer
    sequence(:name) { |n| "Camera #{n}" }
  end
end
