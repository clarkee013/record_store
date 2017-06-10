require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('/controllers/records_controller')
require_relative('/controllers/artists_controller')
require_relative('/controllers/inventorys_controller')

get '/' do
  erb( :index )
end
