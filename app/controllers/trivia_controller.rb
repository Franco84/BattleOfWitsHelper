require 'open-uri'
class TriviaController < ApplicationController

  def show
    values = params[:id].split('x')
    link = "https://www.opentdb.com/api.php?amount=1&category=#{values[0].to_i}&difficulty=#{values[1]}&type=multiple"
    @parsed = JSON.parse(open(link).read)
    render json: @parsed
  end

end
