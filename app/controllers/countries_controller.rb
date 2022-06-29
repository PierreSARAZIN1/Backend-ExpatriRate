class CountriesController < ApplicationController
  before_action :set_country, only: %i[ show update destroy ]
  before_action :authenticate_user!, except: %i[index]
  before_action :is_admin, only: %i[ update create destroy]

  # GET /countries
  def index
    @cities = City.all
    @countries = Country.all
    @newCountry = []
  
    @countries.each do |country|
      @newCountry << {
        country: country,
        cities: country.cities
      }
    end
    render json: @newCountry
  end

  # GET /countries/1
  def show
    render json: { 
      country: @country,
      city: @country.cities
    }
  end

  # POST /countries
  def create
    @country = Country.new(country_params)

    if @country.save
      render json: @country, status: :created, location: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  def update
    if @country.update(country_params)
      render json: { 
        country: @country,
        city: @country.cities
      }
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @country.destroy
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_params
      params.require(:country).permit(:city_id, :name)

    end
    def is_admin
      unless current_user.admin == true
        render json: { message: "Uh Oh, there was a problem" }, status: 400
      end
    end
end
