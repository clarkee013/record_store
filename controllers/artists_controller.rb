require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist.rb' )

get '/artists' do
  @artists = Artist.all()
  erb (:"artists/index")
end

get '/artists/new' do
  @artists = Artist.all
  @records = Record.all
  erb(:"artists/new")
end

post '/artists' do
  artist = Artist.new(params)
  artist.save
  redirect to("/artists")
end

post '/artists/:id/delete' do
  Artist.single_delete(params[:id])
  redirect to("/artists")
end