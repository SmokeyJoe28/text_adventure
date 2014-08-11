class GameController < ApplicationController

  def play
  end

  def input
    @input_text =  params[:input_text]
    render :partial => "action_response"
  end
end
