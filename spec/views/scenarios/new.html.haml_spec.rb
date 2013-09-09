require 'spec_helper'

describe "scenarios/new" do
  before(:each) do
    assign(:scenario, stub_model(Scenario,
      :content => "MyString",
      :position => 1
    ).as_new_record)
  end

  it "renders new scenario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scenarios_path, "post" do
      assert_select "input#scenario_content[name=?]", "scenario[content]"
      assert_select "input#scenario_position[name=?]", "scenario[position]"
    end
  end
end
