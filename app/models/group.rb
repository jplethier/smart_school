class Group < ActiveRecord::Base
  belongs_to :school

  has_many :group_students
  accepts_nested_attributes_for :group_students, :allow_destroy => true

  has_many :students, through: :group_students

  has_many :group_subjects
  accepts_nested_attributes_for :group_subjects, :allow_destroy => true

  has_many :subjects, through: :group_subjects
  has_many :teachers, through: :subjects

  attr_protected :id

  validates :name, presence: true
end
