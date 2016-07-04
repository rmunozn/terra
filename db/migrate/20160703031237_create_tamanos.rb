class CreateTamanos < ActiveRecord::Migration
  def change
    create_table :tamanos do |t|
      t.text :descripcion
      t.integer :precio
      t.timestamps null: false
    end
  end
end
