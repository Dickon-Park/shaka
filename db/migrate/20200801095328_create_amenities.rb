class CreateAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities do |t|
      t.references :spot, null: false, foreign_key: true
      t.string :category
      t.string :descripton
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
