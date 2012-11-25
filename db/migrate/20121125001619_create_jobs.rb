class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :teacher_id
      t.integer :school_id

      t.timestamps
    end
  end
end
