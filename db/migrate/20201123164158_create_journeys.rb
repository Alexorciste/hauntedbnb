class CreateJourneys < ActiveRecord::Migration[6.0]
  def change
    create_table :journeys do |t|
      t.date :checkin
      t.date :checkout
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.references :hauntedhouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
