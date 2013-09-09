require 'spec_helper'

describe "cases/show" do
  before(:each) do
    @case = assign(:case, stub_model(Case,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
