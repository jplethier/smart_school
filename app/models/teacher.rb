class Teacher < User

  has_many :jobs
  has_many :schools, through: :jobs

  def admin?
    false
  end

  def school?
    false
  end

  def student?
    false
  end

  def teacher?
    true
  end  
end