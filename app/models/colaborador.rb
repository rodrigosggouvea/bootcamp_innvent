#encoding: UTF-8
class Colaborador < ActiveRecord::Base
  has_many :projetos, :through => :colaboradores_projetos

  validates :nome,      :presence => {:message => "O nome deve ser preenchido."},      :uniqueness => {:message => "Já existe um colaborador com esse nome."}
  validates :matricula, :presence => {:message => "A matricula deve ser preenchido."}, :uniqueness => {:message => "Já existe um colaborador com essa matricula."}
  validates :cargo,     :presence => {:message => "O cargo deve ser preenchido."}

end
