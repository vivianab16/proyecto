class CreateAprendices < ActiveRecord::Migration
  def change
    create_table :aprendices do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.references :centro_id
      t.references :programa_id
      t.string :ficha

      t.timestamps
    end
  end
end
