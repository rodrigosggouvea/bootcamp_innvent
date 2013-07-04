class ColaboradorProjeto < ActiveRecord::Base
  belongs_to :colaborador
  belongs_to :projeto

  validates :colaborador_id, :presence => {:message => "Deve possuir o id de um colaborador"}
  validates :projeto_id, :presence => {:message => "Deve possuir o id de um projeto"}
end
