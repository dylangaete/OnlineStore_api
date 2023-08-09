class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.decimal :price
      t.integer :quantity
      t.string :status
      
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
