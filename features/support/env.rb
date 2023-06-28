require 'rack/test'
require_relative '../../app'

World(Rack::Test::Methods)

def app
  Sinatra::Application
end
