# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# artwork1 = Artwork.create([ title: 'Mona Lisa' , {image_url: 'monalisa.jpg'}, {artist_id: '6'}])
# artwork2 = Artwork.create( title: 'Revenge of the Frogs' , image_url: 'frogs.jpg', artist_id: '3')
artwork3 = Artwork.create(title: 'Kitty Cat Picnic' , image_url: 'cats.jpg', artist_id: '1')
artwork4 = Artwork.create(title: 'Woooooof' , image_url: 'woooof.jpg', artist_id: '4')
artwork5 = Artwork.create(title: 'Starry Night' , image_url: 'starrynight.jpg', artist_id: '3')

artwork_share1 = ArtworkShare.create( artwork_id: '1' , viewer_id: '1')
artwork_share2 = ArtworkShare.create( artwork_id: '2' , viewer_id: '5')
artwork_share3 = ArtworkShare.create(artwork_id: '2' , viewer_id: '3')
artwork_share4 = ArtworkShare.create( artwork_id: '3' , viewer_id: '4')
artwork_share5 = ArtworkShare.create(artwork_id: '4' , viewer_id: '5')
artwork_share6 = ArtworkShare.create(artwork_id: '5' , viewer_id: '9')
artwork_share7 = ArtworkShare.create(artwork_id: '3' , viewer_id: '8')
artwork_share8 = ArtworkShare.create(artwork_id: '1' , viewer_id: '8')
artwork_share9 = ArtworkShare.create(artwork_id: '3' , viewer_id: '7')
artwork_share10 = ArtworkShare.create(artwork_id: '4' , viewer_id: '6')

