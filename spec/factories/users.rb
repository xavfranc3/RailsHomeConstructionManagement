FactoryBot.define do
  factory :user do
    name { 'Toto' }
    sequence(:email) { |n| "email#{n}@example.com" }
    password { 'Password123' }
  end
end
