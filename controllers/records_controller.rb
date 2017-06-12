require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/record.rb' )

get '/records' do
  @records = Record.all()
  erb ( :"records/index" )
end