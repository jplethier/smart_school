class Teacher < User

  has_many :jobs
  has_many :schools, through: :jobs

  has_many :group_subjects
  has_many :subjects, through: :group_subjects
  has_many :groups, through: :group_subjects

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