
FactoryGirl.define do
  factory :casestudy, :class => Refinery::Casestudies::Casestudy do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

