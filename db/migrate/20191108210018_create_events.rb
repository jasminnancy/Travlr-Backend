class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :trip_id
      t.string :name
      t.string :start_date
      t.string :start_time
      t.string :end_date
      t.string :end_time
      t.integer :cost
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.text :notes

      t.timestamps
    end
  end
end
