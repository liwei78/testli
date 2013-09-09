require 'spec_helper'

describe "cases/new" do
  before(:each) do
    assign(:case, stub_model(Case,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cases_path, "post" do
      assert_select "textarea#case_content[name=?]", "case[content]"
    end
  end
end
