class CreateDocGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :doc_groups do |t|
      t.string :group_name
    end
  end
end
