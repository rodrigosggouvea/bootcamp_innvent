## encoding: UTF-8
require 'spec_helper'

describe Tarefa do
  
  context "acessors" do
    subject { Tarefa.new }
    it { should respond_to :descricao }
    it { should respond_to :descricao= }
    it { should respond_to :colaborador }
    it { should respond_to :colaborador= }
    it { should respond_to :projeto }
    it { should respond_to :projeto= }
    it { should respond_to :data_finalizacao }
    it { should respond_to :data_finalizacao= }
    it { should respond_to :created_at }
  end
  
  context "Validacao" do
    it "nao deve permitir que uma tarefa sem descricao seja salva" do
      tarefa = Tarefa.new
      tarefa.save.should be_false
    end

    it "uma tarefa sem descricao deve apresentar o erro 'Deve ser preenchido'" do
      tarefa = Tarefa.new
      tarefa.save
      tarefa.errors[:descricao].should include("Deve ser preenchido")
    end

    it "nao deve permitir que uma tarefa sem projeto seja salva" do
      tarefa = Tarefa.new
      tarefa.save.should be_false
      tarefa.errors[:projeto_id].should include("Deve ser preenchido")
    end
  end
  
  context "Persistencia" do
    subject{ Tarefa.new }
    before(:each) do
      @colaborador = Colaborador.create(:nome => "Teste", :cargo => "Teste", :matricula => "teste")
      @projeto = Projeto.create(:nome => "Curso", :data_inicio => Date.today)
    end
    it "deve gravar uma nova tarefa no banco" do
      subject.descricao = "Tarefa 1"
      subject.colaborador = @colaborador
      subject.projeto = @projeto
      subject.id.should be_nil
      subject.created_at.should be_nil
      subject.save
      subject.id.should == 1
      subject.created_at.should_not be_nil
    end
    
    it "deve ser possivel criar um novo registro no banco passando os parametros via hash" do
      nova_tarefa = Tarefa.new :descricao => 'Teste', :colaborador => @colaborador, :projeto => @projeto
      nova_tarefa.save.should be_true
      nova_tarefa.id.should_not be_nil
      nova_tarefa.descricao.should == "Teste"
    end

    it "deve ser possivel criar um novo registro no banco sem chamar o save" do
      nova_tarefa = Tarefa.create :descricao => 'Teste', :colaborador => @colaborador, :projeto => @projeto
      nova_tarefa.id.should_not be_nil
      nova_tarefa.descricao.should == "Teste"
      nova_tarefa.descricao = "Novo"
      nova_tarefa.save
      nova_tarefa.descricao.should == "Novo"
    end

    it "deve ser possível concluir uma tarefa" do
      tarefa = Tarefa.create(:descricao => "Teste", :colaborador => @colaborador, :projeto => @projeto)
      tarefa.concluir!
      tarefa.concluida?.should be_true
      tarefa.data_finalizacao.should_not be_nil
    end
  end
end












