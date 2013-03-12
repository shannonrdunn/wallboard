class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :filter
      t.string :username
      t.integer :likes
      t.timestamp :createdtime
      t.string :url_lowres
      t.string :url_standardres
      t.string :url_thumb
      t.integer :id

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
