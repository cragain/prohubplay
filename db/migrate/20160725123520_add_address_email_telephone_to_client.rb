class AddAddressEmailTelephoneToClient < ActiveRecord::Migration
  def change
    add_column :clients, :street_address, :string
    add_column :clients, :street_address_2, :string
    add_column :clients, :city, :string
    add_column :clients, :state, :string
    add_column :clients, :zip, :string
    add_column :clients, :primary_email, :string
    add_column :clients, :secondary_email, :string
    add_column :clients, :primary_phone, :string
    add_column :clients, :secondary_phone, :string
  end
end
