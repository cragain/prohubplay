class AddStaffReviewerToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :staff_accountant, :string
    add_column :tasks, :reviewer, :string
  end
end
