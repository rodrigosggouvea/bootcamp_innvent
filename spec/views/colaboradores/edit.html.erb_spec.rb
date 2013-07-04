require 'spec_helper'

describe "colaboradores/edit" do
  before(:each) do
    @colaborador = assign(:colaborador, stub_model(Colaborador))
  end

  it "renders the edit colaborador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colaborador_path(@colaborador), "post" do
    end
  end
end
