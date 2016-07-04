class CreateMasas < ActiveRecord::Migration
  def change
    create_table :masas do |t|
      t.text :descripcion
      t.integer :precio
      t.timestamps null: false
    end
  end
end
