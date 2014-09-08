class CreateVisitantes < ActiveRecord::Migration
  def change
    create_table :visitantes do |t|
      t.string :aprendiz
      t.string :funcionario
      t.string :instructor
      t.string :empleado
      t.string :otro

      t.timestamps
    end
  end
end
