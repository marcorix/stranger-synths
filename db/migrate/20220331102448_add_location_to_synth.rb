class AddLocationToSynth < ActiveRecord::Migration[6.1]
  def change
    add_column :synths, :location, :string
  end
end
