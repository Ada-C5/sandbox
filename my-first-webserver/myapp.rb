require 'sinatra'
require_relative 'lib/peep'
require_relative 'lib/kitties'

class MyApp < Sinatra::Base
  get '/pizza-party' do
    @cats = Kitties::KITTIES
    erb :'pizza-party'
  end











  get '/my-first-form' do
    erb :my_first_form
  end


  post '/my-first-form' do
    # @my_peep = Peep.new(params["peep"])
    erb :my_first_form
  end

  get '/kitties' do
    @cats = Kitties::KITTIES
    # @cats = %w(apple aubergin avocado brocoli cantelop carrot cashew cucumber garlic kiwi lemon lime papaya peach pickles pineappl pumking rhubarb rutebega thyme tomato watermel zuchinni)

    erb :kitties
  end

  get '/kitties/:name' do
    erb :kitty
  end


  get '/' do
    erb :index
  end

  get '/best-names' do
    erb :best_names
  end

  get '/bye' do
    "Imma miss you. :("
  end

  run!
end
