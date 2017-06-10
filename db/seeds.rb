require_relative( '../models/artist.rb' )
require_relative( '../models/record.rb' )
require_relative( '../models/inventory.rb' )
require('pry-byebug')


artist1 = Artist.new({
  'name' => "Oasis"
  })
artist1.save

artist2 = Artist.new({
  'name' => "The Verve"
  })
artist2.save

artist3 = Artist.new({
  'name' => "Super Furry Animals"
  })
artist3.save

artist4 = Artist.new({
  'name' => "Groove Armada"
  })
artist4.save