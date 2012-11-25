class Subject < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :school
  
  has_many :group_subjects
  has_many :teachers, through: :group_subjects
  has_many :groups, through: :group_subjects
end
