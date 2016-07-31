class ChangeDataTypeForSchedule < ActiveRecord::Migration
  def change
    change_column(:tasks, :schedule, :string)
  end
end
