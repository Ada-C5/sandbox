require 'sinatra'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  register Sinatra::Reloader

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
    send_file 'static/best-names-for-cats.html'
  end


  get '/awful' do
    <<-CATS
<h1>The <strong>Best</strong> Names for <em>Cats</em></h1>

<ol>
  <li><strong>Pickles</strong></li>
  <li>Raquel Welch's Grape Jam</li>
  <li>Grand Lord Snugglewumps</li>
  <li>Thunderpaw the Destroyer</li>
  <li>Impurrator Curiosa (shamelessly stolen from twitter)</li>
  <li>Kitty Purry</li>
</ol>
CATS
  end

  get '/bye' do
    "Imma miss you. :("
  end

  run!
end
