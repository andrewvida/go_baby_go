class AddIndexToParentsEmail < ActiveRecord::Migration
  def change
     add_index :parents, :email, unique: true
  end
end
