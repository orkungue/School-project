class CreateClassGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :class_groups do |t|
      t.integer :school_id
      t.string :classname
      t.integer :leader_id

      t.timestamps
    end
  end
end
