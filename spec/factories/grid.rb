FactoryBot.define do
  factory :grid do
    difficulty { rand(1..5) }
    nationality { Faker::Address.country_code }
    user
  end
end