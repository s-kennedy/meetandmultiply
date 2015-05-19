class AddColumnsApplicantRegistration < ActiveRecord::Migration
  def change
    add_column :applicants, :nationality, :string
    add_column :applicants, :location, :string
    add_column :applicants, :orgtype, :string
    add_column :applicants, :website, :string
    add_column :applicants, :aboutcompany, :text
    add_column :applicants, :position, :string
    add_column :applicants, :businessexperience, :text
    add_column :applicants, :sectorexperience, :text
    add_column :applicants, :language, :string
    add_column :applicants, :model, :string
    add_column :applicants, :profile, :text
    add_column :applicants, :additional, :string

  end
end
