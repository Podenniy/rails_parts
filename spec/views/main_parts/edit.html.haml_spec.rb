require 'spec_helper'

describe "main_parts/edit" do
  before(:each) do
    @main_part = assign(:main_part, stub_model(MainPart,
      :name_parts => "MyString",
      :brand => "MyString",
      :code_part => "MyString",
      :code_parts_advanced => "MyString",
      :ean => "MyString",
      :status_product => "MyString",
      :name_image => "MyString"
    ))
  end

  it "renders the edit main_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", main_part_path(@main_part), "post" do
      assert_select "input#main_part_name_parts[name=?]", "main_part[name_parts]"
      assert_select "input#main_part_brand[name=?]", "main_part[brand]"
      assert_select "input#main_part_code_part[name=?]", "main_part[code_part]"
      assert_select "input#main_part_code_parts_advanced[name=?]", "main_part[code_parts_advanced]"
      assert_select "input#main_part_ean[name=?]", "main_part[ean]"
      assert_select "input#main_part_status_product[name=?]", "main_part[status_product]"
      assert_select "input#main_part_name_image[name=?]", "main_part[name_image]"
    end
  end
end
