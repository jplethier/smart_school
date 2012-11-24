class Teacher < User
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