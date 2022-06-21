class AddReferenceCityIdAndUserIdIntoFavoriteTable < ActiveRecord::Migration[7.0]
  def change

    add_reference :join_table_favorite_cities, :user, foreign: true

    add_reference :join_table_favorite_cities, :city, foreign: true

  end
end
