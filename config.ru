$LOAD_PATH << File.join(File.dirname(__FILE__), "./app/")

require "controller/application"
require 'sinatra'


run Application

configure do
    # set :logging, Logger::DEBUG
end