class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :note_date
      t.string :note_owner
      t.text :note_contents

      t.timestamps null: false
    end
  end
end
