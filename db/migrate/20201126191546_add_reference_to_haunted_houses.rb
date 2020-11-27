class AddReferenceToHauntedHouses < ActiveRecord::Migration[6.0]
  def change
    add_reference :hauntedhouses, :user, foreign_key: true
  end
end
