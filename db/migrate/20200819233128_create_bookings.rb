class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.integer :number_of_nights
      t.integer :number_of_guests
      t.integer :total_cost
      t.integer :user_id
      t.integer :property_id

      t.timestamps
    end
  end
end
