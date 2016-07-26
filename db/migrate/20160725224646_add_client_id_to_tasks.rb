class AddClientIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :client_id, :string
    add_column :tasks, :integer, :string
  end
end
