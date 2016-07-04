class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.text :usuario
      t.text :password
      t.timestamps null: false
    end
  end
end
