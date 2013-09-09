require 'spec_helper'

describe "scenarios/edit" do
  before(:each) do
    @scenario = assign(:scenario, stub_model(Scenario,
      :content => "MyString",
      :position => 1
    ))
  end

  it "renders the edit scenario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scenario_path(@scenario), "post" do
      assert_select "input#scenario_content[name=?]", "scenario[content]"
      assert_select "input#scenario_position[name=?]", "scenario[position]"
    end
  end
end
