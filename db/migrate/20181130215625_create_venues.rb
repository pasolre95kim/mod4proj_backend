class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :contact
      t.string :location
      t.string :price_range
      t.string :capacity
      t.string :image

      t.timestamps
    end
  end
end
