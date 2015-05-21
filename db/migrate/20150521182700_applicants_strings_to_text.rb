class ApplicantsStringsToText < ActiveRecord::Migration
  def change
    change_column :applicants, :profile, :text
    change_column :applicants, :additional, :text
  end
end
