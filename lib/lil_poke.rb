require_relative "../lib/lil_poke/version"
require_relative "../lib/lil_poke/cli"
require_relative "../lib/lil_poke/pokemon"
require_relative "../lib/lil_poke/api"


require 'pry'
require 'httparty'
require 'rest-client'
require 'json'

module LilPoke
  class Error < StandardError; end
  # Your code goes here...
end

BASE_URL = "https://pokeapi.co/api/v2/pokemon/"

#sel_url = "https://pokeapi.co/api/v2/pokemon/" + "LilPoke::Pokemon.find"
