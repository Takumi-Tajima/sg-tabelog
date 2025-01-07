FactoryBot.define do
  factory :shop do
    name { Faker::Name.name }
    place_id { Faker::Alphanumeric.alphanumeric(number: 10) }
  end
end
