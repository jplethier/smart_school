# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
    name 'Escola Teste'
    sequence(:email) { |n| "mail_#{n}@escola.com" }
    password '123qwe'
    password_confirmation '123qwe'
  end
end
