require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/cookie" do
  erb :cookie
end

get "/cupcake" do
  erb :cupcake
end

get "/muffins" do
  erb :muffin
end
# https://github.com/fizal619/yearup-class-2018/tree/master/w08/d01/classwork/views/partials
