class BuildingsController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]

  def index
    @buildings = Building.all
  end

  def home
  end

  def show
    @building = Building.find(params[:id])
    @big_apt = @building.biggest_apt
    # @big_apt = @building.largest_apt
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.create(building_params)
    if @building.valid?
      redirect_to buildings_path
    else
      flash[:notice] = @building.errors.full_messages.join(", ")
      redirect_to new_building_path
    end
  end

  def most_apt
    @building_most_apts = Building.most_apt
  end

  def most_floors
    @buildings_most_floors = Building.most_floors
  end

  def edit
    @building = Building.find(params[:id])
    @apartments = Apartment.find_by(params[:building_id])
  end

  def update
    @building = Building.find(params[:id])
    @building.update(building_params)
    redirect_to building_path(@building)
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to buildings_path

  end



  private

  def building_params
    params.require(:building).permit(:name, :elevator, :num_floors, :address, :pets)
  end








end #end of class
