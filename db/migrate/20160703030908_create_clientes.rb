class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.text :nombre
      t.text :apellido
      t.integer :rut
      t.text :email
      t.integer :numero
      t.timestamps null: false
    end
  end
end
