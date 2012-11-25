# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group_subject do
    group
    subject
    teacher
  end
end
