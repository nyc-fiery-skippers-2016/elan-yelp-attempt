class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do | t |
      t.text :body, null: false
      t.references :user, null: false, index: true
      t.references :place, null: false, index: true
      t.timestamps( null: false )
    end
  end
end
