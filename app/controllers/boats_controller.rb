class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by(id: params[:id])
  end

  def new
    # @boat = Boat.new
  end

  def create
    @boat = Boat.new(name: params[:boat][:name],
                     description: params[:boat][:description],
                     brand_id: rand(0..6),
                     type_id: rand(0..6)) #!!!!!!????
    if @boat.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def update

  end

  def destroy

  end

end
