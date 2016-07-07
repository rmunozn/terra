class AddPedidoIdToFactura < ActiveRecord::Migration
  def change
    add_reference :facturas, :pedido, index: true, foreign_key: true
  end
end
