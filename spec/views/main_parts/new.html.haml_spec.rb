require 'spec_helper'

describe "main_parts/new" do
  before(:each) do
    assign(:main_part, stub_model(MainPart).as_new_record)
  end

  it "renders new main_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", main_parts_path, "post" do
    end
  end
end
