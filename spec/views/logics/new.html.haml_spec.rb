require 'spec_helper'

describe "logics/new" do
  before(:each) do
    assign(:logic, stub_model(Logic,
      :title => "MyString",
      :content => "MyString",
      :position => 1
    ).as_new_record)
  end

  it "renders new logic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logics_path, "post" do
      assert_select "input#logic_title[name=?]", "logic[title]"
      assert_select "input#logic_content[name=?]", "logic[content]"
      assert_select "input#logic_position[name=?]", "logic[position]"
    end
  end
end
