class CreatePlanes < ActiveRecord::Migration[6.1]
  def change
    create_table :planes do |t|
      t.string :plane_name
      t.string :plane_type
      t.string :location
      t.integer :capacity
      t.integer :price
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
