class AddColumnsApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :firstname, :string
    add_column :applicants, :lastname, :string
    add_column :applicants, :email, :string
    add_column :applicants, :company, :string
    add_column :applicants, :interest, :text
  end
end
