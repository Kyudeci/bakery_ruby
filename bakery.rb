require 'sinatra'
require 'sinatra/reloader'
require './cookie'
require './cake'
require './cupcake'
require './muffin'

require 'sqlite3'
require 'active_record'

enable :sessions
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/goods.db'
)
get "/" do
  erb :index
end

get "/cookie" do
  @cookie1 = Cookies.new('cookie_plate.jpg','Chocolate Chip', false, 3)
  @cookie2 = Cookies.new('fudge_cookie.jpg','Fudge', false, 3)
  @cookie3 = Cookies.new('cookie_cat.jpeg','Cookie Cat', false, 5)
  erb :cookie
end

get "/cupcake" do
  @cupcake1 = Cupcake.new('van_cupcake.jpg','Vanilla Cupcake', true, 5)
  @cupcake2 = Cupcake.new('red_cupcake.jpg','Red Velvet Cupcake', false, 6)
  @cupcake3 = Cupcake.new('choco_cupcakes.jpg','Chocolatte Cupcake', false, 5)
  erb :cupcake
end

get "/muffins" do
  erb :muffin
end

get "/cake" do
  @cake1 = Cake.new('flower_cake.jpeg','Flower Cake', true, 1)
  @cake2 = Cake.new('basic_cake.jpeg','Build-a-Cake', false, 1)
  @cake3 = Cake.new('coconut.jpg','Coconut Cake', false, 1)
  erb :cake
end
# https://github.com/fizal619/yearup-class-2018/tree/master/w08/d01/classwork/views/partials
