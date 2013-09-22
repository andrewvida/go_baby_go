class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.date :occurred_at
      t.string :description
      t.integer :kid_id

      t.timestamps
    end
  end
end
