require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/record.rb' )

get '/records' do
  @records = Record.all()
  erb ( :"records/index" )
end

get '/records/new' do
  @records = Record.all
  @artists = Artist.all
  erb(:"records/new")
end

post '/records' do
  record = Record.new(params)
  record.save
  redirect to("/records")
end

post '/records/:id/delete' do
  Record.single_delete(params[:id])
  redirect to("/records")
end