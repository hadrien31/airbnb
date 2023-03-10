class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :destroy]


  def new
    @adventure = Adventure.new
  end

  def show
    @adventure = Adventure.find(params[:id])
    @booking = Booking.new

  end

  def create
    @adventure = Adventure.new(adventure_params)
    @adventure.user = current_user
    if @adventure.save!
      redirect_to adventure_path(@adventure)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @adventure.destroy
    redirect_to adventure_path, status: :see_other
  end

  private

  def adventure_params
    params.require(:adventure).permit(:title, :price, :location, :decription, photos: [])
  end

  def set_adventure
    @adventure = Adventure.find(params[:id])
  end
end
