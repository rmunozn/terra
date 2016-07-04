class CreateEleccions < ActiveRecord::Migration
  def change
    create_table :eleccions do |t|

      t.timestamps null: false
    end
  end
end
