require 'open-uri'
require 'json'

url = "https://wagon-dictionary.herokuapp.com/#{params[:answer]}"
json_string = open(url).read
real_word = JSON.parse(json_string)

class GamesController < ApplicationController

  def new
    @letters = (0..10).map {('A'..'Z').to_a[rand(26)]}
  end

  def score
    # raise
    if params[:letters].include?(params[:answer])
      @computer = "hello"
      if real_word[:found] == true
        print "WTF"
      end
    else
      @computer = "Sorry but #{params[:answer]} cannot be made from #{params[:letters]}."
    end
  end
end
