class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :description
      t.string :picture_url

      t.timestamps
    end
  end
end
