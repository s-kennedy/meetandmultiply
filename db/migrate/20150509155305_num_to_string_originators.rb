class NumToStringOriginators < ActiveRecord::Migration
  def change
    change_column :originators, :founded, :string
    change_column :originators, :turnover, :string
  end
end
