class ColaboradorProjeto < ActiveRecord::Base
  has_many :projetos, :through => :colaboradores_projetos

  validates :colaborador_id, :presence => {:message => "Deve possuir o id de um colaborador"}
  validates :projeto_id, :presence => {:message => "Deve possuir o id de um projeto"}
end
