require 'pry'
require 'bundler'
Bundler.require

module Concerns
end 
  
require_relative '../lib/concerns/Findable.rb'
require_relative '../lib/concerns/Memorable.rb'
require_relative '../lib/Artist.rb' 
require_relative '../lib/Song.rb'
require_relative '../lib/Genre.rb'
