class AddEnrollNumberToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :enrollment_number, :string
  end
end
