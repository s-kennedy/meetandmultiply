class Change < ActiveRecord::Migration
  def change
    rename_column :applicants, :model, :bmodel
  end
end
