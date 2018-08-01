# hello.rb
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :No_31
end

get '/nickname' do
  @nickname = params[:nickname]
  erb :No_31_1
end



