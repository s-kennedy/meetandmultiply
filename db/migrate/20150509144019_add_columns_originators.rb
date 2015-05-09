class AddColumnsOriginators < ActiveRecord::Migration
  def change
    add_column :originators, :title, :string
    add_column :originators, :subtitle, :string
    add_column :originators, :website, :string
    add_column :originators, :about1, :text
    add_column :originators, :about2, :text
    add_column :originators, :location, :string
    add_column :originators, :sector, :string
    add_column :originators, :adopterprofile, :string
    add_column :originators, :founded, :integer
    add_column :originators, :employees, :string
    add_column :originators, :turnover, :integer
    add_column :originators, :profit, :string
    add_column :originators, :bmodel, :text
    add_column :originators, :relationships, :text
    add_column :originators, :revenue, :text
    add_column :originators, :customerbase, :text
    add_column :originators, :feature, :text
    add_column :originators, :impacttitle1, :string
    add_column :originators, :impacttitle2, :string
    add_column :originators, :impacttitle3, :string
    add_column :originators, :impacttext1, :text
    add_column :originators, :impacttext2, :text
    add_column :originators, :impacttext3, :text
    add_column :originators, :growthopportunity, :text
    add_column :originators, :replicationtitle1, :string
    add_column :originators, :replicationtitle2, :string
    add_column :originators, :replicationtitle3, :string
    add_column :originators, :replicationtext1, :text
    add_column :originators, :replicationtext2, :text
    add_column :originators, :replicationtext3, :text

  end
end
