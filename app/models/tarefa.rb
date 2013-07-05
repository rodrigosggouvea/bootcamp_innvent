class Tarefa < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :colaborador

  validates_presence_of :descricao, {:message => "Deve ser preenchido"}
  validates_presence_of :colaborador_id, {:message => "Deve ser escolhido"}
  validates_size_of :descricao, :minimum => 3
  validates :projeto_id, :presence => {:message => "Deve ser preenchido"}
  
  scope :do_projeto, lambda{|projeto_id| Tarefa.where(:projeto_id => projeto_id)}

  def concluir!
    update_attribute(:data_finalizacao,Date.today)
  end

  def concluida?
    !data_finalizacao.nil?
  end
  
end
