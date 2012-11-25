# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enrollment do
    enrollment_number '1a'

    school
    student
  end
end
