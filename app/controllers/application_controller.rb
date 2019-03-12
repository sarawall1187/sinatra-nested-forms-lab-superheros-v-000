require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:heroes].each do |detail|
       SuperHero.new(detail[:team][:heroes][:name],detail[:team][:heroes][:power], detail[:team][:heroes][:bio])
     end
       @super_hero = SuperHero.all
      erb :team
    end

end
