class Student < User

  attr_protected :id

  attr_accessor :enrollment_number, :school_id

  has_many :enrollments
  accepts_nested_attributes_for :enrollments, :allow_destroy => true

  has_many :schools, through: :enrollments

  after_save :create_enrollment, if: 'self.enrollment_number && self.school_id'

  def create_enrollment
    Enrollment.create(student_id: self.id, school_id: self.school_id, enrollment_number: self.enrollment_number)
  end

  def school_enrollment_number(school)
    self.enrollments.find_by_school_id(school.id).try(:enrollment_number)
  end
  
  def admin?
    false
  end

  def school?
    false
  end

  def student?
    true
  end

  def teacher?
    false
  end  
end