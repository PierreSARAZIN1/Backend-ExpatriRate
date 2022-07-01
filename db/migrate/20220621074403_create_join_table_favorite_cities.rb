class CreateJoinTableFavoriteCities < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_favorite_cities do |t|

      t.timestamps
    end
  end
end
