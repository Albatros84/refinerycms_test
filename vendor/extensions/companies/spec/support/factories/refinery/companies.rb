
FactoryGirl.define do
  factory :company, :class => Refinery::Companies::Company do
    sequence(:location) { |n| "refinery#{n}" }
  end
end

