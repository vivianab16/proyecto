class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellidos
      t.string :identificacion
      t.references :cargo, index: true
      t.string :mail
      t.string :tel

      t.timestamps
    end
  end
end
