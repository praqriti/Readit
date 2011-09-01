class CreateChannels < ActiveRecord::Migration
  def self.up
    create_table :channels do |t|
      t.string :title
      t.string :link
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :channels
  end
end
