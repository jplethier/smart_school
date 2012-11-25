class CreateGroupSubjects < ActiveRecord::Migration
  def change
    create_table :group_subjects do |t|
      t.integer :group_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
