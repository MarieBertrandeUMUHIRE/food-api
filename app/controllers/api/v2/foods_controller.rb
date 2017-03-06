class Api::V2::FoodsController < ApplicationController

  def index
    @foods = Food.all
    render json: @foods

  end
  def create
    @food = Food.create(
      ingredient: params[:ingredient], 
      spice: params[:spice], measurement: params[:measurement])

      render json: @food
  end
  def update
    @food = Food.find_by(id:params[:id])
    @food.update(
      ingredient: params[:ingredient],
      spice: params[:spice], 
      measurement: params[:measurement]
      )
    render json: @foods
  end

  def show
    @food = Food.find_by(id:params[:id])
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    render json: @foods
 end
end
