class CreateApplicationSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :application_settings do |t|
      t.string :setup

      t.timestamps
    end
  end
end
