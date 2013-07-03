#encoding: utf-8
require 'spec_helper'

describe 'Colaborador' do
  let(:colaborador) {Colaborador.new}
  subject { colaborador }

  describe "Validações" do
    context "nome" do
      it "deve ser preenchido" do
        colaborador.valid?.should be_false
        colaborador.errors[:nome].should_not be_empty
      end
    end
    context "cargo" do
      it "deve ser preenchido" do
        colaborador.valid?.should be_false
        colaborador.errors[:cargo].should_not be_empty
      end
    end
    context "matricula" do
      it "deve ser preenchido" do
        colaborador.valid?.should be_false
        colaborador.errors[:matricula].should_not be_empty
      end
      it "deve ser único" do
        Colaborador.create(:nome => "Teste", :cargo => "Teste", :matricula => "teste")
        colaborador.matricula = "teste"
        colaborador.valid?.should be_false
        colaborador.errors[:matricula].should include("Já existe um colaborador com essa matricula.")
      end
    end
  end
end