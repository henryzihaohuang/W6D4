# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

 user1 = User.create!(username: 'theartguy')
 user2 = User.create!(username: 'nottheartguy')
 user3 = User.create!(username: 'tomthebomb')
 user4 = User.create!(username: 'ihateart23')

 artwork1 = Artwork.create!(title: 'Mona Lisa', artist_id: user1.id)
 artwork2 = Artwork.create!(title: 'Statue of David', artist_id: user2.id)
 artwork3 = Artwork.create!(title: 'Mona Lisa', artist_id: user3.id)
 artwork4 = Artwork.create!(title: 'Modern Artwork', artist_id: user4.id)

 share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user1.id)
 share2 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
 share3 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user4.id)
 share4 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user1.id)
 share5 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)
 share6 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user2.id)
 share7 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user3.id)
 share8 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user4.id)



