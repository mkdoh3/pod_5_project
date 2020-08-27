class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :max_occupancy

      t.timestamps
    end
  end
end
