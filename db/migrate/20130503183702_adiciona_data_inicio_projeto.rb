class AdicionaDataInicioProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :data_inicio, :datetime
  end
end
