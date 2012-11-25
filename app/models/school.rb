class School < User

  has_many :subjects

  has_many :groups

  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :jobs
  has_many :teachers, through: :jobs
  
  def admin?
    false
  end

  def school?
    true
  end

  def student?
    false
  end

  def teacher?
    false
  end
end