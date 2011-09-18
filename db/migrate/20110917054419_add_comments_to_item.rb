class AddCommentsToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :comments, :string
  end

  def self.down
    remove_column :items, :comments
  end
end
