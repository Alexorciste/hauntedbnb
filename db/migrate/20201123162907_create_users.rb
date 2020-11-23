class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.string :address
      t.string :mail
      t.string :role

      t.timestamps
    end
  end
end
