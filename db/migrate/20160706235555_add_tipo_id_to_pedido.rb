class AddTipoIdToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :tipo, index: true, foreign_key: true
  end
end
