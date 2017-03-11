require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"


not_found do
  redirect "/"
end

# this is Product if using active record
class Product# < ActiveRecord::Base
def self.search(search)
  product = hash.new#where("name like ?", "%#{search}%")
  product[search]
end
end

get "/" do
  @title = "Lily Challenge"

  erb :home
end

get "/search" do
  @title = "Lily Search"
  @products = Product.all
if params[:search]
  @products = Product.search(params[:search])
else
  @products = Product.all
end
  erb :search
end

get "/form" do
  @title = "Talk to Lily"
  erb :form
end

get "/about_us" do
  @title = "Who is Lily?"

  erb :about_us
end

get "/products" do
  @title = "Lily's Products'"

  erb :products
end

get "/philanthropy" do
  @title = "Lily Changes the World"

  erb :philanthropy
end

get "/careers" do
  @title = "Lily Careers"

  erb :careers
end

get "/subscribe" do
  @title = "Subscribe"

  erb :subscribe
end