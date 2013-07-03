class CreateColaboradores < ActiveRecord::Migration
  def change
    create_table :colaboradores do |t|
      t.string :nome
      t.string :matricula
      t.string :cargo

      t.timestamps
    end
  end
end
