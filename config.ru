require_relative './environment.rb'
require 'bundler/setup'
require "web_git"

# Uncomment for Ruby chapters and other projects with no web interface
# map '/' do
#   dir = Gem::Specification.find_by_name('web_git').gem_dir
#   path = dir + '/lib/views/index.html'
#   default_homepage = File.read(path)
#   app = proc do |env|
#     [200, { 'Content-Type' => 'text/html' }, [default_homepage]]
#   end
#   run app
# end

map '/git' do
  run WebGit::Server
end

run Sinatra::Application
