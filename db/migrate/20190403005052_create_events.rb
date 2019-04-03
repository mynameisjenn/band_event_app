class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :band_id
      t.datetime :event_date
      t.integer :venue_id
      t.boolean :favorited
      t.integer :user_id

      t.timestamps
    end
  end
end
