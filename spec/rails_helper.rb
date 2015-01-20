require 'rubygems'
require 'bundler/setup'

begin
  require 'pry'
rescue LoadError
end

ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../dummy/config/environment",  __FILE__)

require 'rspec/rails'

require 'engine_watching_changes'

# RSpec.configure do |config|
# end
