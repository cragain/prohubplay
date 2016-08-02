class AddOtherStaffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :other_staff_1, :string
    add_column :users, :other_staff_2, :string
    add_column :users, :other_staff_3, :string
    add_column :users, :other_staff_4, :string
  end
end
