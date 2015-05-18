class AddColumnsOriginator < ActiveRecord::Migration
  def change
    add_column :originators, :url, :string
    add_column :originators, :bg_img, :string
    add_column :originators, :growth_img, :string
  end
end
