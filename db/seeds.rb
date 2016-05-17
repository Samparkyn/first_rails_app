# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Artist.delete_all()
Album.delete_all()
Gig.delete_all()
Venue.delete_all()

artist1 = Artist.create!({name: "Robbie Williams"})
artist2 = Artist.create!({name: "Coldplay"})

Album.create!({name: "Escapology", artist_id: artist1.id})
artist1.albums.create({name:"Take The Crown"})
Album.create!({name: "A Head Full Of Dreams", artist_id: artist2.id})

venue1 = Venue.create!({name: "02 Arena", location: "London"});
venue2 = Venue.create!({name: "Wembley Stadium", location: "London"})

Gig.create({
  artist_id: artist1.id,
  venue_id: venue1.id,
  price: 50,
  date: DateTime.new(2016, 11, 01)
  })
