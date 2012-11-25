class AddTeacherIdToGroupSubjects < ActiveRecord::Migration
  def change
    add_column :group_subjects, :teacher_id, :integer
  end
end
