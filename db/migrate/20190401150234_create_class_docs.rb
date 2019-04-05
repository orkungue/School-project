class CreateClassDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :class_docs do |t|
      t.integer :doc_id
      t.integer :class_id
    end
  end
end
