class CitiesController < ApplicationController
  before_action :set_city, only: %i[ show update destroy ]
  before_action :authenticate_user!, except: %i[index]
  before_action :is_admin, only: %i[ update create destroy]

  
  # GET /cities
  def index
    @cities = City.all

    render json: @cities
  end

  # GET /cities/1
  def show
    render json: @city
  end

  # POST /cities
  def create
    puts "❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌"
    puts current_user.admin
    @city = City.new(city_params)

    if @city.save
      render json: @city, status: :created, location: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cities/1
  def update
    if @city.update(city_params)
      render json: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cities/1
  def destroy
    @city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_params
      params.require(:city).permit(:name, :lat, :long, :picture, :overall, :activities, :cost, :works_places, :healthcare, :internet, :safety, :french_speaking)
    end

    def is_admin
      unless current_user.admin == true
        render json: { message: "Uh Oh, there was a problem" }, status: 400
      end
    end
    
end
