require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
  "hello!"
end

get '/secret' do
  "Psssh! I got a secret"
end

get '/about' do
  "This is the page for secrets"
end

get '/services' do
  "<h1>Secret services</h1>
  <p>We have lots of secret services</p>
  <ul>
  <li>Like a service we can't speak about</li>
  <li>And another</li>
  </ul>"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end

get '/contact-us' do
  "We'll contact you"
end

