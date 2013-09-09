require 'spec_helper'

describe "cases/index" do
  before(:each) do
    assign(:cases, [
      stub_model(Case,
        :content => "MyText"
      ),
      stub_model(Case,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of cases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
