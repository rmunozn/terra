class CreatePromocions < ActiveRecord::Migration
  def change
    create_table :promocions do |t|
      t.integer :numero
      t.text :detalle
      t.integer :precio
      t.timestamps null: false
    end
  end
end
