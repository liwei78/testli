require 'spec_helper'

describe "cases/edit" do
  before(:each) do
    @case = assign(:case, stub_model(Case,
      :content => "MyText"
    ))
  end

  it "renders the edit case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", case_path(@case), "post" do
      assert_select "textarea#case_content[name=?]", "case[content]"
    end
  end
end
