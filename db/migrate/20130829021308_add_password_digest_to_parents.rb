class AddPasswordDigestToParents < ActiveRecord::Migration
  def change
    add_column :parents, :password_digest, :string
  end
end
