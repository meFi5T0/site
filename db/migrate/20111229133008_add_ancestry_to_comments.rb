class AddAncestryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ancestry, :string
  end

  def up
    add_index :comments, :ancestry
  end

  def down
    remove_index :comments, :ancestry
  end

end
