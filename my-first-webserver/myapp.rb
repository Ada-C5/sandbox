require 'sinatra'

class MyApp < Sinatra::Base
  get '/amazing' do
    @favorite_animal = "Red Panda"
    erb(:amazing)
  end


  get '/' do
    send_file 'static/index.html'
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
