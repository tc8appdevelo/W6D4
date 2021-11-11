class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image_url
      t.string :artist_id
      t.index [:artist_id, :title], unique: true
      t.timestamps
    end

  end
end
