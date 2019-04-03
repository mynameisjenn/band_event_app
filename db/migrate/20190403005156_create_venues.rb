class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :address

      t.timestamps
    end
  end
end
