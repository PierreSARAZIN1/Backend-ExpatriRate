class AddReferenceToCity < ActiveRecord::Migration[7.0]
  def change

    add_reference :cities, :country, foreign: true


  end
end
