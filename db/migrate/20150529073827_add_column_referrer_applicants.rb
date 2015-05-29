class AddColumnReferrerApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :referrer, :string
  end
end
