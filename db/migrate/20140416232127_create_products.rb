class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.string :image_url
      t.references :supplier, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
