class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.text :descripcion
      t.text :tamano
      t.integer :precio
      t.timestamps null: false
    end
  end
end
