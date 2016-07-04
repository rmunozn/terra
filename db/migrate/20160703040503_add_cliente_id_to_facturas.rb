class AddClienteIdToFacturas < ActiveRecord::Migration
  def change
    add_reference :facturas, :cliente, index: true, foreign_key: true
  end
end
