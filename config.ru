require 'bundler/setup'
require 'faye'

@faye = Faye::RackAdapter.new(mount: '/faye', timeout: 25)

require File.dirname(__FILE__) + '/app'
use Sinatra::Application

run @faye