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
                     length: params[:boat][:length],
                     width: params[:boat][:width],
                     height: params[:boat][:height],
                     carrying: params[:boat][:carrying],
                     passengers: params[:boat][:passengers],
                     weight: params[:boat][:weight],
                     madein: params[:boat][:madein],
                     engine: params[:boat][:engine],
                     brand_id: params[:boat][:brand_id],
                     type_id: params[:boat][:type_id]) #!!!!!!????
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
