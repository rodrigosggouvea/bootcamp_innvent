class Projeto < ActiveRecord::Base
  has_many :tarefas
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_size_of :nome, :minimum => 3
  validates_presence_of :data_inicio
  validate :letra_maiuscula_projeto
  validates :data_inicio, :timeliness => {:on_or_after => Date.today}

  private 
    def letra_maiuscula_projeto
      errors.add(:nome, "Primeira letra do nome deve ser maiuscula") unless nome =~ /^[A-Z]/
    end
  
end
