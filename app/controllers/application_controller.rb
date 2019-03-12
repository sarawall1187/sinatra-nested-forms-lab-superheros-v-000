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
      params[:team][:heroes].each do |details|
       SuperHero.new(details)

      erb :team
    end

end
