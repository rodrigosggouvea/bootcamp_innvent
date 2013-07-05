#encoding: utf-8
class Projeto < ActiveRecord::Base
  has_many :tarefas
  has_many :colaboradores_projetos
  has_many :colaboradores, through: :colaboradores_projetos
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_size_of :nome, :minimum => 3
  validate :letra_maiuscula_projeto
  validates :data_inicio, :timeliness => {:on_or_after => Date.today}, :presence => {:message => "Deve ser preenchido"}

  private
    def letra_maiuscula_projeto
      errors.add(:nome, "Primeira letra do nome deve ser maiuscula") unless nome =~ /^[A-Z]/
    end
end
