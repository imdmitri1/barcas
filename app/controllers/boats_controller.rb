class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by(id: params[:id])
  end

end
