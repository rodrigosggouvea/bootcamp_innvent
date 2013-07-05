#encoding: utf-8
require 'spec_helper'

describe Projeto do
  context "validações" do
    it "um projeto não pode ter data de início anterior à data atual" do
      projeto = Projeto.new(:nome => "Projeto Bootcamp", :data_inicio => 3.days.ago.to_date)
      projeto.should_not be_valid
      projeto.errors[:data_inicio].should_not be_empty
    end
  end
end