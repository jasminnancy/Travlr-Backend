class CreateTransportations < ActiveRecord::Migration[6.0]
  def change
    create_table :transportations do |t|
      t.integer :trip_id
      t.string :transport_type
      t.integer :cost
      t.string :company
      t.string :starting_date
      t.string :starting_time
      t.string :ending_date
      t.string :ending_time
      t.string :starting_location
      t.string :destination
      t.integer :total_miles
      t.string :confirmation_code
      t.text :notes

      t.timestamps
    end
  end
end
