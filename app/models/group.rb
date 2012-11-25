class Group < ActiveRecord::Base
  belongs_to :school

  has_many :group_students
  has_many :students, through: :group_students

  has_many :group_subjects
  has_many :subjects, through: :group_subjects
  has_many :teachers, through: :subjects
end
