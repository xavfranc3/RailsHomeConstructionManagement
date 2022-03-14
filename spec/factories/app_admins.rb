FactoryBot.define do
  factory :app_admin do
    name { 'AppAdmin' }
    sequence(:email) { |n| "email#{n}@example.com" }
    password { 'Password123' }
  end
end
