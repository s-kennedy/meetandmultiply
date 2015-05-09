class AddColumnAboutApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :activities, :text
  end
end
