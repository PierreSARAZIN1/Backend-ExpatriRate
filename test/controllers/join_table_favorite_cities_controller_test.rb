require "test_helper"

class JoinTableFavoriteCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_favorite_city = join_table_favorite_cities(:one)
  end

  test "should get index" do
    get join_table_favorite_cities_url, as: :json
    assert_response :success
  end

  test "should create join_table_favorite_city" do
    assert_difference("JoinTableFavoriteCity.count") do
      post join_table_favorite_cities_url, params: { join_table_favorite_city: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show join_table_favorite_city" do
    get join_table_favorite_city_url(@join_table_favorite_city), as: :json
    assert_response :success
  end

  test "should update join_table_favorite_city" do
    patch join_table_favorite_city_url(@join_table_favorite_city), params: { join_table_favorite_city: {  } }, as: :json
    assert_response :success
  end

  test "should destroy join_table_favorite_city" do
    assert_difference("JoinTableFavoriteCity.count", -1) do
      delete join_table_favorite_city_url(@join_table_favorite_city), as: :json
    end

    assert_response :no_content
  end
end
