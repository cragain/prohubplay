class AddPackageSchedulesTaxToClients < ActiveRecord::Migration
  def change
    add_column :clients, :bookkeeping_schedule, :string
    add_column :clients, :payroll_schedule, :string
    add_column :clients, :tax_projected, :integer
  end
end
