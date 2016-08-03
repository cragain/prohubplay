class CreateRagains < ActiveRecord::Migration
  def change
    create_table :ragains do |t|
      t.text :guy

      t.timestamps null: false
    end
  end
end
