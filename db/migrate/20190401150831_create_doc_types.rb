class CreateDocTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :doc_types do |t|
      t.string :doc_name
    end
  end
end
