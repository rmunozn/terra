class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.timestamps :fecha
      t.integer :precio
      t.timestamps null: false
    end
  end
end
