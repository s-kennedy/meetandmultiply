class AddFeaturesOriginators < ActiveRecord::Migration
  def change
    add_column :originators, :partners, :text
    add_column :originators, :coststructure, :text
  end
end
