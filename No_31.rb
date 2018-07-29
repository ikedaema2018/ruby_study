# hello.rb
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :No_31
end

get '/nickname/:name' do
  # puts "こんにちは#{params[:nickname]}さん"
  @nickname = params[:name]
  erb :No_31_1
end

