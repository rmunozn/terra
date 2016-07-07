class AddEleccionIdToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :eleccion, index: true, foreign_key: true
  end
end
