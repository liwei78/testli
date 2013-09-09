require 'spec_helper'

describe "logics/show" do
  before(:each) do
    @logic = assign(:logic, stub_model(Logic,
      :title => "Title",
      :content => "Content",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
