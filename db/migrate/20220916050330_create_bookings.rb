class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :location
      t.float :latitude
      t.float :longitude
      t.datetime :check_in
      t.datetime :check_out
      t.integer :adults
      t.integer :children
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
