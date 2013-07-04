#encoding: UTF-8
class Colaborador < ActiveRecord::Base
  has_many :colaboradores_projetos
  has_many :projetos, through: :colaboradores_projetos

  validates :matricula, :presence => {:message => "A matricula deve ser preenchido."}, :uniqueness => {:message => "Já existe um colaborador com essa matricula."}
  validates :nome,      :presence => {:message => "O nome deve ser preenchido."}
  validates :cargo,     :presence => {:message => "O cargo deve ser preenchido."}

  def nome_completo
    matricula.to_s + " " + nome
  end

end
