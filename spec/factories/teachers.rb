# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :teacher do
    name 'Professor Teste'
    sequence(:email) { |n| "mail_#{n}@professor.com" }
    password '123qwe'
    password_confirmation '123qwe'

    school
  end
end
