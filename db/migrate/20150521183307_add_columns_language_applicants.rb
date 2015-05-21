class AddColumnsLanguageApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :english, :string
    add_column :applicants, :spanish, :string
    add_column :applicants, :otherlang, :string
  end
end
