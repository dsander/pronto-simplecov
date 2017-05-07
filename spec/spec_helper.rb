require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pronto/simplecov"

RSpec.configure do |c|
  c.filter_run focus: true
  c.run_all_when_everything_filtered = true
end
