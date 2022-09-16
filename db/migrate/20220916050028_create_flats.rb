class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :price_per_night
      t.datetime :check_in
      t.datetime :check_out
      t.integer :guests
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :wifi
      t.boolean :aircon
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
