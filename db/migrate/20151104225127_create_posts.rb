class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :caption
      t.string :image_url
      t.integer :rating
      t.integer :up_votes
      t.string :restaurant
      t.string :location
      t.references :user

      t.timestamps
    end
  end
end
