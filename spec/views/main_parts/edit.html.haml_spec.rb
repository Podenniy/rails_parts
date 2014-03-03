require 'spec_helper'

describe "main_parts/edit" do
  before(:each) do
    @main_part = assign(:main_part, stub_model(MainPart))
  end

  it "renders the edit main_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", main_part_path(@main_part), "post" do
    end
  end
end
