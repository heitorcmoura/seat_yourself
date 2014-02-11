class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :neighbourhood
      t.string :price_rating
      t.string :cuisine
      t.text :summary

      t.timestamps
    end
  end
end
