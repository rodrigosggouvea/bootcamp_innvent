require 'spec_helper'

describe "colaboradores/new" do
  before(:each) do
    assign(:colaborador, stub_model(Colaborador).as_new_record)
  end

  it "renders new colaborador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colaboradores_path, "post" do
    end
  end
end
