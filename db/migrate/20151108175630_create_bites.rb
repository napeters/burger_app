class CreateBites < ActiveRecord::Migration
  def change
    create_table :bites do |t|
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
