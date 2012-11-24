class School < User
  
  def admin?
    false
  end

  def school?
    true
  end
end