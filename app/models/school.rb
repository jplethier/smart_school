class School < User

  has_many :subjects
  
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