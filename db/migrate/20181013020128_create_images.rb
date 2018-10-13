class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :image
      t.text :title
      t.text :user_id

      t.timestamps
    end
  end
end
