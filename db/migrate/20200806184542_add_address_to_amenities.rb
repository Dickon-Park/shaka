class AddAddressToAmenities < ActiveRecord::Migration[6.0]
  def change
    add_column :amenities, :address, :string
  end
end
