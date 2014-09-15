class CreateConfeccion < ActiveRecord::Migration
  def change
    create_table :confeccion do |t|
      t.references :ficha, index: true
      t.references :programa, index: true

      t.timestamps
    end
  end
end
