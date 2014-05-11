class CreateMyItems < ActiveRecord::Migration
  def change
    create_table :my_items do |t|
      t.integer :component_id
      t.integer :caart_id

      t.timestamps
    end
  end
end
