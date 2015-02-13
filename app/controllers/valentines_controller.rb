class ValentinesController < ApplicationController

  def index
    @valentines = Valentine.all
  end

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

  def destroy
    @valentine = Valentine.find(params[:id])
    if @valentine.destroy
      redirect_to valentines_path
    end
  end


private
  def valentine_params
    params.require(:valentine).permit(:name, :message)
  end
end
