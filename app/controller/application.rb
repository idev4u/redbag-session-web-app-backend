# frozen_string_literal: true

require 'sinatra/base'
require 'json'

class Application < Sinatra::Application
  quote_store = [
    "Die wahre Kunst der Fahrzeugbeherrschung erkennt man im instabilen Fahrzustand!",
    "Man kann ein Auto nicht wie ein menschliches Wesen behandeln - ein Auto braucht Liebe."
  ]

  get '/' do
    logger.info("The quote from Walte was requested")
    response = "This is the api for walters quote of the day"
  end

  get '/quotes/from/walter/of/today' do
    content_type :json
    index = rand(quote_store.size)
    { quote: quote_store[index] }.to_json
  end
end
