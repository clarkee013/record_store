require_relative( '../models/artist.rb' )
require_relative( '../models/record.rb' )
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
  'artist_id' => artist1.id,
  'title' => 'Roll With It',
  'type' => 'CD Single',
  'quantity' => 2,
  'cover_url' => 'http://bit.ly/2ra4zKq',
  'genre' => "Rock",
  'release_year' => 1995
  })
record1.save

record2 = Record.new({
  'artist_id' => artist2.id,
  'title' => 'Urban Hymns',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://bit.ly/2s2egvW',
  'genre' => "Rock",
  'release_year' => 1997
  })
record2.save

record3 = Record.new({
  'artist_id' => artist3.id,
  'title' => 'Fuzzy Logic',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://bit.ly/2rRrTiZ',
  'genre' => "Psychedelic Rock",
  'release_year' => 1996
  })
record3.save

record4 = Record.new({
  'artist_id' => artist4.id,
  'title' => 'Good Country (Hello Nightclub)',
  'type' => 'CD Album',
  'quantity' => 1,
  'cover_url' => 'http://bit.ly/2ssZO2G',
  'genre' => "Electronica",
  'release_year' => 2001
  })
record4.save