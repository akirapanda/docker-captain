require "./application"

use Rack::Session::Cookie
run Rack::Cascade.new [Web,API]