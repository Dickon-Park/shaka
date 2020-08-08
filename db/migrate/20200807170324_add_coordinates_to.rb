class AddCoordinatesTo < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :longitude
    remove_column :spots, :latitude
    add_column :spots, :longitude, :float
    add_column :spots, :latitude, :float
  end
end
