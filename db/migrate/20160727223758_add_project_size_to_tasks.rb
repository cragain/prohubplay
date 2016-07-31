class AddProjectSizeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :project_size, :integer
  end
end
