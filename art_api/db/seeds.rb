# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    User.delete_all


    user1 = User.create(
      username: "claude_monet"
    )

    user2 = User.create(
      username: "vincent_van_gogh"
    )

    user3 = User.create(
      username: "rembrandt"
    )

    art1 = Artwork.create(
      title: "The Starry Night",
      artist_id: 2,
      image_url: "googlethisart.com"
    )

    art2 = Artwork.create(
      title: "monalisa_stolen",
      artist_id: 1,
      image_url: "anotherone.com"
    )

    art3 = Artwork.create(
      title: "statue_of_temple",
      artist_id: 3,
      image_url: "stat.com"
    )
    ArtworkShare.create(
      artwork_id: art1.id,
      viewer_id: user3.id
    )    
    ArtworkShare.create(
      artwork_id: art2.id,
      viewer_id: user2.id
    )
    ArtworkShare.create(
      artwork_id: art3.id,
      viewer_id: user1.id
    )

end