class GamesController < ApplicationController
  def new
    @alph = ('A'..'Z').to_a
    @letters = @alph.sample(10)
  end

  def score
    @word = params[:word]
    @word.chars.each do |letter|
      return letter;
    end
  end
end
