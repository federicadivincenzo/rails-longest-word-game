require 'open-uri'

class GamesController < ApplicationController
  def new
    @alph = ('A'..'Z').to_a
    @letters = @alph.sample(10)
  end

  def score
    @word = params[:word].chars
    letters = new()
    letters_clean = letters.map { |el| el.downcase }
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{@word.join}")
    data = JSON.parse(response.read)
    letters_clean.each { |el| @word.delete_at(@word.index(el)) if @word.index(el) }
raise

    if data['found']
      @attempt = @word
    end
  end

end
