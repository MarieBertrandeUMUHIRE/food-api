class Api::V2::FoodsController < ApplicationController
  def index
    @foods = Food.all

  end
  def create
    @food = Food.new(ingredient: params[:ingredient], spice: params[:spice], measurement: params[:measurement])
    @food.save
    render :show
  end
  def update
    @food = Food.find_by(id:params[:id])
    @food.update(
      ingredient: params[:ingredient],
      spice: params[:spice], 
      measurement: params[:measurement]
      )
    render :show
  end
end
