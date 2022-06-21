class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :picture
      t.float :overall
      t.float :activities
      t.float :cost
      t.float :works_places
      t.float :healthcare
      t.float :internet
      t.float :safety
      t.boolean :french_speaking
      
      t.timestamps
    end
  end
end
