class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :brand_id
      t.integer :category_id

      t.timestamps
    end
  end
end
