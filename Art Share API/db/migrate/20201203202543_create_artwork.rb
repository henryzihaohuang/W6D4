class CreateArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
        t.string :title, null:false
        t.string :image_url
        t.integer :artist_id, null:false
    end
    change_column_null :users, :username, false
  end
end
