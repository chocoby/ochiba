FactoryGirl.define do
  factory :lens do
    manufacturer
    sequence(:lens_id) { |n| "#{n}" }
    sequence(:name) { |n| "Lens #{n}" }
  end
end
