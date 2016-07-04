class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.timestamps :fecha
      t.text :estado
      t.timestamps null: false
    end
  end
end
