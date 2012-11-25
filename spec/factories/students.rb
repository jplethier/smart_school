s# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name 'Aluno Teste'
    sequence(:email) { |n| "mail_#{n}@aluno.com" }
    password '123qwe'
    password_confirmation '123qwe'

    school
  end
end
