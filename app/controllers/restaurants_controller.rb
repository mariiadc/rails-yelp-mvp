class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  def index
    @restaurant = Restaurant.all
    # @restaurants = Restaurant.where(published: true)
  end

  def show
    # GET /restaurants/1/edit
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  def edit
    # GET /restaurants/1/edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save # => false / true
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      # redirect_to new_restaurant_path WRONG!
      render :new # please render new.html.erb!
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params) # true / false
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :review)
  end
end
