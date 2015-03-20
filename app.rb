require 'sinatra/base'

class App < Sinatra::Base

	get '/' do
		erb :super_hero
	end

	post '/teams' do
		@name = params["team"]["name"]
		@motto = params["team"]["motto"]
		@members = params["team"]["members"]
		erb :team
	end
end
