class AddTamanoIdToEleccion < ActiveRecord::Migration
  def change
    add_reference :eleccions, :tamano, index: true, foreign_key: true
  end
end
