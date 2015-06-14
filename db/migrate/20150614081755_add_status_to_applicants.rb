class AddStatusToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :status, :string
  end
end
