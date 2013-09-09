require 'spec_helper'

describe "scenarios/index" do
  before(:each) do
    assign(:scenarios, [
      stub_model(Scenario,
        :content => "Content",
        :position => 1
      ),
      stub_model(Scenario,
        :content => "Content",
        :position => 1
      )
    ])
  end

  it "renders a list of scenarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
