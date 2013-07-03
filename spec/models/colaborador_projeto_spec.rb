#encoding: utf-8
require 'spec_helper'

describe ColaboradorProjeto do
  let(:colaborador_projeto) {ColaboradorProjeto.new}
  subject { colaborador_projeto }
  describe "Validações" do
    context "colaborador_id" do
      it "não pode ser nulo" do
        colaborador_projeto.valid?.should be_false
        colaborador_projeto.errors[:colaborador_id].should_not be_empty
      end
    end
    context "projeto_id" do
      it "não pode ser nulo" do
        colaborador_projeto.valid?.should be_false
        colaborador_projeto.errors[:projeto_id].should_not be_empty
      end
    end
  end
end
