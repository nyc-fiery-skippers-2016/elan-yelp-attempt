class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do | t |
      t.string :place_type, null: false, index: true
      t.string :name, null: false, index: true
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip
      t.string :website
      t.timestamps( null: false )
    end
  end
end
