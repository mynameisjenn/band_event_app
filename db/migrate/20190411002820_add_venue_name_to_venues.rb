class AddVenueNameToVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :venue_name, :string
  end
end
