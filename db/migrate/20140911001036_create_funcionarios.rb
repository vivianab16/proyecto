class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :identificacion
      t.references :centro, index: true
      t.references :programa, index: true

      t.timestamps
    end
  end
end
