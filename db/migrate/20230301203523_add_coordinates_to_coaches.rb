class AddCoordinatesToCoaches < ActiveRecord::Migration[7.0]
  def change
    add_column :coaches, :latitude, :float
    add_column :coaches, :longitude, :float
  end
end
