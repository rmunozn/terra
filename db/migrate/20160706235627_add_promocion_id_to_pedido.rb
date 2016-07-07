class AddPromocionIdToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :promocion, index: true, foreign_key: true
  end
end
