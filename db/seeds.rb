require_relative( '../models/artist.rb' )
require_relative( '../models/record.rb' )
require_relative( '../models/inventory.rb' )
# require('pry-byebug')


artist1 = Artist.new({
  'name' => 'Oasis'
  })
artist1.save

artist2 = Artist.new({
  'name' => 'The Verve'
  })
artist2.save

artist3 = Artist.new({
  'name' => 'Super Furry Animals'
  })
artist3.save

artist4 = Artist.new({
  'name' => 'Groove Armada'
  })
artist4.save

record1 = Record.new({
  'artist' => 'Oasis',
  'title' => 'Roll With It',
  'type' => 'CD Single',
  'quantity' => 2,
  'cover_url' => 'http://payload159.cargocollective.com/1/0/23203/5484124/oasis_roll_with_it_o.jpg',
  'genre' => "Rock",
  'release_year' => 1995
  })
record1.save

record2 = Record.new({
  'artist' => 'The Verve',
  'title' => 'Urban Hyms',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://payload159.cargocollective.com/1/0/23203/5484092/verve_urban_hymns_o.jpg',
  'genre' => "Rock",
  'release_year' => 1997
  })
record2.save

record3 = Record.new({
  'artist' => 'Super Furry Animals',
  'title' => 'Fuzzy Logic',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://payload161.cargocollective.com/1/0/23203/5524250/SFA-Web-2.jpg',
  'genre' => "Psychedelic Rock",
  'release_year' => 1996
  })
record3.save

record4 = Record.new({
  'artist' => 'Groove Armada',
  'title' => 'Fuzzy Logic',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://payload161.cargocollective.com/1/0/23203/5524250/SFA-Web-2.jpg',
  'genre' => "Electronica",
  'release_year' => 2001
  })
record4.save