FactoryBot.define do
  factory :course do
    title Faker::Name.name
    description Faker::Name.name
  end
end
