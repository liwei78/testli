require 'spec_helper'

describe "logics/index" do
  before(:each) do
    assign(:logics, [
      stub_model(Logic,
        :title => "Title",
        :content => "Content",
        :position => 1
      ),
      stub_model(Logic,
        :title => "Title",
        :content => "Content",
        :position => 1
      )
    ])
  end

  it "renders a list of logics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
