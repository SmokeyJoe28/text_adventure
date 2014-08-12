class GameController < ApplicationController

  def input

    @input_text = params[:input_text]
    @input_text.downcase! if @input_text
    if @input_text.eql?("left")
      render :file => 'app/views/game/left_room_one.html.erb'
    elsif @input_text.eql?("right")
      render :file => 'app/views/game/right_room_one.html.erb'
    else
      render :text => "You did not choose right or left. Try again."
    end
  end
end
