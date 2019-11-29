$LOAD_PATH << File.join(File.dirname(__FILE__), "../app/")
require "rack/test"
require "controller/application"
require 'sinatra'
require 'bundler'

ENV["RACK_ENV"] = "test"
ENV['APP_ENV'] = "test"

Bundler.require(Sinatra::Base.environment)

RSpec.configure do |config|
  config.include Rack::Test::Methods

  def app
    Application
  end
end

