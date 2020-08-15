class AddUserToSpots < ActiveRecord::Migration[6.0]
  def change
    add_reference :spots, :user
  end
end
