class PlantsController < ApplicationController
  # index to fetch data
  def index
    plants = Plant.all
    render json: plants

  end
  # show 
  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  # updating the create 
  def create
    # using strong params
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end


  def plant_params
    params.require(:plant).permit(:name, :image, :price)
  end
end
