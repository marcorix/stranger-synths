class AddCoordinatesToSynth < ActiveRecord::Migration[6.1]
  def change
    add_column :synths, :latitude, :float
    add_column :synths, :longitude, :float
  end
end
