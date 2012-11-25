class Job < ActiveRecord::Base
  attr_accessible :school_id, :teacher_id

  belongs_to :school
  belongs_to :teacher
end
