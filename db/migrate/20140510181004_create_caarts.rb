class CreateCaarts < ActiveRecord::Migration
  def change
    create_table :caarts do |t|

      t.timestamps
    end
  end
end
