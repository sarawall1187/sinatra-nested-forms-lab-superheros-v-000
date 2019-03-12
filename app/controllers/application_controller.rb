require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @teams = Team.new 
      @name = params[:team][:name]
      @motto = params[:team][:motto]
      @hero_name_1 = params
      erb :team
    end

end
