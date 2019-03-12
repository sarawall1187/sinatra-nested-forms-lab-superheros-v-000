require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:heroes].each do |details|
       SuperHero.new
     end
     @super_hero = SuperHero.all
      erb :team
    end

end
