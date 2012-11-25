class Student < User

  has_many :enrollments
  has_many :schools, through: :enrollments
  
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