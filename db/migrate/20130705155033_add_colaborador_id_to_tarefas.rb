class AddColaboradorIdToTarefas < ActiveRecord::Migration
  def change
    add_column :tarefas, :colaborador_id, :integer
  end
end
