class AddMasaIdToEleccion < ActiveRecord::Migration
  def change
    add_reference :eleccions, :masa, index: true, foreign_key: true
  end
end
