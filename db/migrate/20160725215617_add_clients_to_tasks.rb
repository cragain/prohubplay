class AddClientsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :client_name, :string
  end
end
