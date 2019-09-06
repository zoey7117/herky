class ApartmentsController < ApplicationController

  def show
    @apartment = Apartment.find(params[:id])
    @buildings = Building.all
    @large_apt = Apartment.largest_apt.last
  end

  def new
    @apartment = Apartment.new
    @buildings = Building.all
  end

  def create
    @apartment = Apartment.create(apt_params)
    if @apartment.valid?
      redirect_to building_path(@apartment.building)
    else
      flash[:notice] = @apartment.errors.full_messages.join
      redirect_to new_apartment_path
    end
  end

  def edit
  @apartment = Apartment.find(params[:id])
  @buildings = Building.all
end

def update
  @apartment = Apartment.find(params[:id])
  @apartment.update(apt_params)
  redirect_to building_path(@apartment.building)
end

def destroy
  @apartment = Apartment.find(params[:id])
  @apartment.destroy
  redirect_to building_path(@apartment.building)
end

def custom
end


private

def apt_params
  params.require(:apartment).permit(:apt_num, :size, :num_rooms, :num_windows, :building_id)
end




end
