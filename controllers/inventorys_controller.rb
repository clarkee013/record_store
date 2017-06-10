require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/inventory.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/record.rb' )

get '/inventorys' do
  @inventorys = Inventory.all
  erb ( :"inventorys/index" )
end

get '/inventorys/new' do
  @artists = Artist.all
  @records = Record.all
  erb(:"inventorys/new")
end

post '/inventorys' do
  inventory = Inventorys.new(params)
  inventory.save
  redirect to("/inventorys")
end

post '/inventorys/:id/delete' do
  Inventory.destroy(params[:id])
  redirect to("/inventorys")
end