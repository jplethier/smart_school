class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :string, limit: 32
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :address_number, :string
    add_column :users, :address_complement, :string
    add_column :users, :address_cep, :string
    add_column :users, :address_city, :string
    add_column :users, :address_state, :string
    add_column :users, :address_neighborhood, :string
    add_column :users, :address_country, :string
    add_column :users, :phone_number1, :string
    add_column :users, :phone_number2, :string
    add_column :users, :cell_number1, :string
    add_column :users, :cell_number2, :string
  end
end
