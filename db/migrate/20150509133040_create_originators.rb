class CreateOriginators < ActiveRecord::Migration
  def change
    create_table :originators do |t|

      t.timestamps null: false
    end
  end
end
