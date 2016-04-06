require 'sinatra'

class MyApp < Sinatra::Base
  get '/kitties' do
    @cats = %w(apple aubergin avocado brocoli cantelop carrot cashew cucumber garlic kiwi lemon lime papaya peach pickles pineappl pumking rhubarb rutebega thyme tomato watermel zuchinni)

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
