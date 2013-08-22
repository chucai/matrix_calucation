require 'rubygems'
require 'bundler/setup'

# require File.join(File.expand_path("../../lib",__FILE__), "matrix_calucation.rb")
$:.unshift File.expand_path("../../lib",__FILE__)

Bundler.require(:default, :development)

RSpec.configure do |config|
  config.mock_with :rspec
end