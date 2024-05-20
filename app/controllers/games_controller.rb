class GamesController < ApplicationController

  def new
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def score
    @suggestion = params[:suggestion]
    letters_copy = params[:letters]
    sug_array = @suggestion.split("")

    if (sug_array - letters_copy.split("")).empty?
      @message = "Congratulations! #{@suggestion.upcase} is a valid English word!"
    else
      @message = "Sorry but #{@suggestion.upcase} does not seem to be a valid English word..."
    end
  end

end
