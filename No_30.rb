# hello.rb
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :No_30
end

post '/nickname' do
  # puts "こんにちは#{params[:nickname]}さん"
  @nickname = params[:nickname]
  erb :No_30_1
end

