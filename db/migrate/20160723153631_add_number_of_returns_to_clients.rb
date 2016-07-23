class AddNumberOfReturnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :number_of_returns, :integer
  end
end
