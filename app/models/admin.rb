class Admin < User
  def admin?
    true
  end

  def school?
    false
  end

  def student?
    false
  end

  def teacher?
    false
  end
end