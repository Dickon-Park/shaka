class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.string :skill_level
      t.string :disciplines
      t.text :description

      t.timestamps
    end
  end
end
