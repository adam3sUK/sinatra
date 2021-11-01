require 'sinatra'
require "sinatra/reloader"

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "hello!"
  end
  
  get '/secret' do
    "Psssh! I got a secret"
  end
  
  get '/about' do
    "This is the page for secrets"
  end
  
  get '/contact-us' do
    "We'll contact you"
  end
end
