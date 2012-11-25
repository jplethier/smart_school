class Enrollment < ActiveRecord::Base
  attr_accessible :school_id, :student_id, :enrollment_number

  belongs_to :school
  belongs_to :student

  validates :school_id, :student_id, :enrollment_number, presence: true
end
