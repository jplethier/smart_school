class Admin < User
  def admin?
    true
  end

  def school?
    false
  end
end