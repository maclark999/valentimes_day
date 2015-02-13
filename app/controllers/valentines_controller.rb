class ValentinesController < ApplicationController

  def new
    @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)
    if @valentine.save
      redirect_to @valentine
    else
      render :new
    end
  end

  def white_men
  end


private
  def valentine_params
    params.require(:valentine).permit(:name, :message)
  end
end
