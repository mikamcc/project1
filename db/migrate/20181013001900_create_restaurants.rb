class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :summary
      t.text :location
      t.text :opening_hours
      t.integer :vegan_option
      t.integer :user_id

      t.timestamps
    end
  end
end
