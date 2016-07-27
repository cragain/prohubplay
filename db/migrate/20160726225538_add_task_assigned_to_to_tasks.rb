class AddTaskAssignedToToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_assigned_to, :string
  end
end
