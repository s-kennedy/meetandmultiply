class AddSlugColumnToOriginators < ActiveRecord::Migration
  def change
    add_column :originators, :slug, :string
    add_index :originators, :slug, :unique => true
  end
end
