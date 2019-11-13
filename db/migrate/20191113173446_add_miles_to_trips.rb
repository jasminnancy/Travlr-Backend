class AddMilesToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :miles, :integer
  end
end
