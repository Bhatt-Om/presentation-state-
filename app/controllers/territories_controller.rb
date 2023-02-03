class TerritoriesController < ApplicationController

  before_action :find_state, only: [:edit, :update, :show, :destroy]

  def index
    @states = Territory.all
  end

  def show
  end 

  def new
    @state = Territory.new 
  end

  def create

    @state = Territory.new(state_patams)
    if @state.save
      redirect_to territories_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update

    if  @state.update(state_patams)
      redirect_to territories_path
    else
      render 'edit'
    end

  end

  def destroy
    @state.destroy
    redirect_to territories_path
  end

  private 

  def find_state 
    @state = Territory.find_by_id(params[:id])
  end

  def state_patams 
    params.require(:territory).permit(:name)
  end
end
