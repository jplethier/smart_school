class GroupSubject < ActiveRecord::Base
  attr_accessible :group_id, :subject_id, :teacher_id

  belongs_to :group
  belongs_to :subject
  belongs_to :teacher
end
