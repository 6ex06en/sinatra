require 'sinatra'
require "sinatra/activerecord"
require 'json'
require './environments'
require './models/person'
require './models/keyword'
require './models/person_page_rank'
require './models/page'
require './models/site'

get '/' do
 a = {a: "c", b: "b"}
 a.to_json
end

get '/hi' do
	"prived!"
end

get '/users' do
	@persons = Persons.all.to_json
end
