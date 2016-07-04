class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.text :descripcion
      t.integer :precio
      t.timestamps null: false
    end
  end
end
