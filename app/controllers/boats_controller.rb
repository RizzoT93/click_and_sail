class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.save!
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:brand, :size, :boat_type, :year, :photo)
  end
end
