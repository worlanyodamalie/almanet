class AddFieldsToOrganisations < ActiveRecord::Migration[5.0]
  def change
    add_column :organisations, :organisation_name, :string
    add_column :organisations, :organisation_email, :string
    add_column :organisations, :First_name, :string
    add_column :organisations, :Last_name, :string
    add_column :organisations, :Phone_number, :integer
  end
end
