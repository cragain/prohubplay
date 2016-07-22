class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :business_name
      t.string :business_type

      t.timestamps null: false
    end
  end
end
