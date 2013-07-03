class CreateColaboradoresProjetos < ActiveRecord::Migration
  def change
    create_table :colaboradores_projetos do |t|
      t.integer :colaborador_id
      t.integer :projeto_id

      t.timestamps
    end
  end
end
