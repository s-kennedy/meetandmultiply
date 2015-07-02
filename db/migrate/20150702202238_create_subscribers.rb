class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :sector
      t.string :orgname
      t.string :region
      t.string :role

      t.timestamps null: false
    end
  end
end
