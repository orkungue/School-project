class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :doc_headline
      t.longblob :doc_content
      t.integer :user_id
      t.integer :doc_type_id
      t.integer :doc_group_id
      t.timestamps
    end
  end
end
