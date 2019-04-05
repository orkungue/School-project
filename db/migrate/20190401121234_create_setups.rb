class CreateSetups < ActiveRecord::Migration[5.2]
  def change
    create_table :setups do |t|
      t.integer :class_id
      t.longblob :enabled_apps

      t.timestamps
    end
  end
end
