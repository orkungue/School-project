class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.text :note_content_student
      t.text :note_content_teacher

      t.timestamps
    end
  end
end
