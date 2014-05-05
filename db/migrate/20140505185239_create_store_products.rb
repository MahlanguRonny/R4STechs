class CreateStoreProducts < ActiveRecord::Migration
  def change
    create_table :store_products do |t|
      t.string :name
      t.integer :categoryid
      t.integer :quantity
      t.integer :supplierid
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
