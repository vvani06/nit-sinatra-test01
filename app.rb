require 'sinatra'
require 'sinatra/reloader'

before do
	@before_value = "foo"
	puts "Before filter called"
end

get '/' do
  'Hello Nitrous/Sinatra!'
end

get '/about' do
	"about #{@before_value} site .."
end

after do
	puts "After filter called"
end