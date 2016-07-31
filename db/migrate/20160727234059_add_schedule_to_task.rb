class AddScheduleToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :schedule, :integer
  end
end
