class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      
      t.references :store, null: false, foreign_key: true  # Agregar la relación de clave foránea en la columna category_id
      t.timestamps
    end
  end
end
