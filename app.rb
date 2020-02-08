require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPSgame < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    erb :play
  end
end