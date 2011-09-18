class AddAuthorToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :author, :string
  end

  def self.down
    remove_column :items, :author
  end
end
