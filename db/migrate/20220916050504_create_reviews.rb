class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.date :date
      t.string :description
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
