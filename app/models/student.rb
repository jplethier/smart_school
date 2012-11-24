class Student < User
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