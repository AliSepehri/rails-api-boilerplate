FactoryBot.define do
  factory :user do
    sequence(:email) {|n| Faker::Internet.email("#{Faker::Name.first_name}#{n}") }
    password { 'password' }
  end
end
