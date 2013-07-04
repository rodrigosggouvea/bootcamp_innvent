require 'spec_helper'

describe "colaboradores/index" do
  before(:each) do
    assign(:colaboradores, [
      stub_model(Colaborador),
      stub_model(Colaborador)
    ])
  end

  it "renders a list of colaboradores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
