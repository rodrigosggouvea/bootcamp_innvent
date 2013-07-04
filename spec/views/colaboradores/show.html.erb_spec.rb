require 'spec_helper'

describe "colaboradores/show" do
  before(:each) do
    @colaborador = assign(:colaborador, stub_model(Colaborador))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
