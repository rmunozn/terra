class AddExtraIdToPedido < ActiveRecord::Migration
  def change
    add_reference :pedidos, :extra, index: true, foreign_key: true
  end
end
