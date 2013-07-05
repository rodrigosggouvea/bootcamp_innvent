class ChangeDataInicioFromProjetos < ActiveRecord::Migration
  def up
    change_column :projetos, :data_inicio, :date
  end

  def down
    change_column :projetos, :data_inicio, :datetime
  end
end
