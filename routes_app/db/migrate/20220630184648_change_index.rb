class ChangeIndex < ActiveRecord::Migration[5.2]
  def change

    remove_index :artworks, name: "index_artworks_on_artist_id"

    add_index :artwork_shares, :viewer_id
    add_index :artwork_shares, :artwork_id


  end
end
