# frozen_string_literal: true
require "spec_helper"
require "json"
require 'logger'

RSpec.describe Application do

  logger = Logger.new(STDOUT)

  def logger
    logger = @logger
    logger = Logger::DEBUG
    logger
  end

  context "Api descriptiom" do
    it "does responed to " do
      get "/"
      # puts "RESPONSE: #{last_response.status}, #{last_response.errors}"
      expect(last_response).to be_ok
    end

    it "show the api info message" do
      get "/"
      expect(last_response.body).to match("This is the api ")
    end
  end
  context "Api request for a quote" do

    it "provide a quote" do
      get "/quotes/from/walter/of/today"
      expect(last_response).to be_ok
      result = JSON.parse(last_response.body)
      expect(result).to have_key("quote")
    end

  end
end

