class AddIngredienteIdToEleccion < ActiveRecord::Migration
  def change
    add_reference :eleccions, :ingrediente, index: true, foreign_key: true
  end
end
