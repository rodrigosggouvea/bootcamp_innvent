class Projeto < ActiveRecord::Base
  has_many :tarefas
  has_many :colaboradores_projetos
  has_many :colaboradores, through: :colaboradores_projetos
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_size_of :nome, :minimum => 3
  validates_presence_of :data_inicio
  validate :letra_maiuscula_projeto
  validates :data_inicio, :timeliness => {:on_or_after => Date.today}

  before_validation :definir_data_inicio

  def definir_data_inicio
    self.data_inicio = Date.today
  end

  private 
    def letra_maiuscula_projeto
      errors.add(:nome, "Primeira letra do nome deve ser maiuscula") unless nome =~ /^[A-Z]/
    end
  
end
