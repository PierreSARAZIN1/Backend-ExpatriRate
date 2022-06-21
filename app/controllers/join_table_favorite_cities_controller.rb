class JoinTableFavoriteCitiesController < ApplicationController
  before_action :set_join_table_favorite_city, only: %i[ destroy ]
  before_action :authenticate_user!, except: %i[index]
  before_action :current_user_favorite_city, only: %i[ show ]


  # GET /join_table_favorite_cities
  def index
    @join_table_favorite_cities = JoinTableFavoriteCity.all
    render :json => ['city' => @join_table_favorite_cities], :include=> [:users, :cities] 
  end

  # GET /join_table_favorite_cities/1
  def show
    render :json => ['city' => @current_user_favorite_city], :include=> [:users, :cities]
  end

  # POST /join_table_favorite_cities
  def create
    @join_table_favorite_city = JoinTableFavoriteCity.new(join_table_favorite_city_params)

    if @join_table_favorite_city.save
      render json: @join_table_favorite_city, status: :created, location: @join_table_favorite_city
    else
      render json: @join_table_favorite_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /join_table_favorite_cities/1
  # def update
  #   if @join_table_favorite_city.update(join_table_favorite_city_params)
  #     render json: @join_table_favorite_city
  #   else
  #     render json: @join_table_favorite_city.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /join_table_favorite_cities/1
  def destroy
    @join_table_favorite_city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_favorite_city
      @join_table_favorite_city = JoinTableFavoriteCity.find(params[:id])
    end

    def current_user_favorite_city
      @current_user_favorite_city = JoinTableFavoriteCity.find_by(user_id: current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def join_table_favorite_city_params
      params.require(:join_table_favorite_city).permit(:user_id, :city_id)
    end
end
