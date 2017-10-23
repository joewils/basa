require 'active_record'
require 'sinatra'
require 'yaml'

# Config
$config = YAML.load_file('config.yml')

# Setup Active Record
require_relative 'active_record'

before '*' do
end

# Index
get '/' do
  erb :index
end
