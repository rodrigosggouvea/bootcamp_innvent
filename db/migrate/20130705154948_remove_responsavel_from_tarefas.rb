class RemoveResponsavelFromTarefas < ActiveRecord::Migration
  def up
    remove_column :tarefas, :responsavel
      end

  def down
    add_column :tarefas, :responsavel, :string
  end
end
