class AddColumnsToKid < ActiveRecord::Migration
  def change
    add_column :kids, :birthdate, :date
    add_column :kids, :birthplace, :string
    add_column :kids, :weight, :string
    add_column :kids, :height, :string
  end
end
