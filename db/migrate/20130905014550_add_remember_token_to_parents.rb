class AddRememberTokenToParents < ActiveRecord::Migration
  def change
    add_column :parents, :remember_token, :string
    add_index  :parents, :remember_token
  end
end
