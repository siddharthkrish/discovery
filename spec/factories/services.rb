FactoryBot.define do
  factory :service do
    name { Faker::Lorem.word }
    version { Faker::Number.number(5) }
    created_by { Faker::Number.number(10) }
  end
end