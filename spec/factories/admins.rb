# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do
    name 'Admin Teste'
    sequence(:email) { |n| "mail_#{n}@admin.com" }
    password '123qwe'
    password_confirmation '123qwe'
  end
end
