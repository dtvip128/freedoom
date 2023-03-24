FactoryBot.define do
  factory :user do
    username { Faker::Alphanumeric.alpha(number: 10) }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
