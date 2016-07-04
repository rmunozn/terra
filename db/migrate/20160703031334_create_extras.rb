class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.text :descripcion
      t.integer :precio
      t.timestamps null: false
    end
  end
end
