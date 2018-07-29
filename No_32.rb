require 'rubygems'
require 'sinatra'
# require 'sinatra/reloader'
require './common'

get '/' do
  erb :No_32
end

post '/profile' do
  @name = params[:name]
  @gender = params[:gender]
  @todoufuken = params[:todoufuken]

  profile = Profile.new
  profile.name = @name
  profile.gender = @gender
  profile.todoufuken = @todoufuken
  profile.save

  erb :No_32
end