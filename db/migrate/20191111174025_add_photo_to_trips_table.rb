class AddPhotoToTripsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :photo, :string
  end
end
