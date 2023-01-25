class PlantsController < ApplicationController

  # GET /plants index route, renders all plants
  def index
    render json: Plant.all, status: :ok
  end

  # GET /plants/:id show route, renders specific plant based on id
  def show
    plant = Plant.find(params[:id])
    render json: plant, status: :ok
  end

  # POST /plants creates a new plant, renders the plant data, status code of 201 (created)
  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
