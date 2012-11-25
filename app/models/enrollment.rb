class Enrollment < ActiveRecord::Base
  attr_accessible :school_id, :student_id

  belongs_to :school
  belongs_to :student
end
