class AddColumnsReports < ActiveRecord::Migration
  def change
    add_column :originators, :profile_path, :string
    add_column :originators, :report1_path, :string
    add_column :originators, :report1_title, :string
    add_column :originators, :report2_path, :string
    add_column :originators, :report2_title, :string
  end
end
