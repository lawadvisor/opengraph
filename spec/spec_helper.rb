$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'opengraph'
require 'rspec'
require 'webmock/rspec'

include WebMock::API

RSpec.configure do |config|
  config.expect_with(:rspec) { |c|
    c.syntax = :should
  }
end
