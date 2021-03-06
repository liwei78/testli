require 'spec_helper'

describe "scenarios/show" do
  before(:each) do
    @scenario = assign(:scenario, stub_model(Scenario,
      :content => "Content",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
