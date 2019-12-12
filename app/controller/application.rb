# frozen_string_literal: true

require 'sinatra/base'
require 'json'

class Application < Sinatra::Application
  quote_store = [
    "Die wahre Kunst der Fahrzeugbeherrschung erkennt man im instabilen Fahrzustand!",
    "Man kann ein Auto nicht wie ein menschliches Wesen behandeln - ein Auto braucht Liebe.",
    "Ein Auto ist erst dann schnell genug, wenn man morgens davor steht und Angst hat es aufzuschließen.",
    "Wenn den Baum siehst, in den du rein fährst, hast untersteuern. Wenn ihn nur hörst, hast übersteuern",
    "Im Rallye Sport wurde meine Vermutung bestätigt, dass ein Auto mit 2 angetriebenen Rädern nur eine Notlösung ist.",
    "Autofahren beginnt für mich dort, wo ich den Wagen mit dem Gaspedal statt dem Lenkrad steuere. Alles andere heißt nur die Arbeit machen.",
    "Gute Fahrer haben die Fliegenreste auf den Seitenscheiben.",
    "Vernünftige Autos werden vom Antrieb geschoben, nicht gezogen !!!"
  ]

  get '/' do
    logger.info("The quote from Walte was requested")
    response = "This is the api for walters quote of the day"
  end

  get '/quotes/from/walter/of/today' do
    content_type :json
    index = rand(quote_store.size)
    puts "[DEBUG:] quote index = #{index}"
    { quote: quote_store[index] }.to_json
  end
end
