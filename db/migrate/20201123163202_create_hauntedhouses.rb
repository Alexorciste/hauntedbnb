class CreateHauntedhouses < ActiveRecord::Migration[6.0]
  def change
    create_table :hauntedhouses do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :address
      t.string :city
      t.string :country
      t.integer :price_per_night

      t.timestamps
    end
  end
end
