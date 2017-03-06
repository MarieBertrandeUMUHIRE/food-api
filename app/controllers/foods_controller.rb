class FoodsController < ApplicationController
  def index
  end
  def destroy
      @food = Food.find_by(id: params[:id])
      @food.destroy
      render json: @foods
  end
  def create
    @food = Food.create(
      ingredient: params[:ingredient], 
      spice: params[:spice], 
      measurement: params[:measurement])
      render json: @foods
  end
  def update
    @food = Food.find_by(id:params[:id])
    @food.update(
      ingredient: params[:ingredient],
      spice: params[:spice], 
      measurement: params[:measurement]
      )
    @food.save
    render json: @foods
  end

end
