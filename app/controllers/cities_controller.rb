class CitiesController < ApplicationController

  before_action :city_find, only: [:edit, :update, :show, :destroy]

  def index
    @cities = City.all 
  end

  def show
  end

  def new
    @city = City.new 
  end

  def create

    @city = City.new(city_params)
    if @city.save
      redirect_to cities_path   
    else
      render 'new'
    end

  end

  def edit
  end

  def update

    if @City.update(city_params)
      redirect_to cities_path  
    else
      render 'edit'
    end

  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private

  def city_find 
    @city = City.find_by_id(params[:id])
  end

  def city_params 
    params.require(:city).permit(:name, :territory_id)
  end




end
