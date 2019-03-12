require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @teams = Team.new(params[:team])
      # @name = params[:team][:name]
      # @motto = params[:team][:motto]
      params[:team][:super_heroes]
      @heroes = SuperHero.new

      erb :team
    end

end
