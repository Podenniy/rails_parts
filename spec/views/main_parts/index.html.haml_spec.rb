require 'spec_helper'

describe "main_parts/index" do
  before(:each) do
    assign(:main_parts, [
      stub_model(MainPart,
        :name_parts => "Name Parts",
        :brand => "Brand",
        :code_part => "Code Part",
        :code_parts_advanced => "Code Parts Advanced",
        :ean => "Ean",
        :status_product => "Status Product",
        :name_image => "Name Image"
      ),
      stub_model(MainPart,
        :name_parts => "Name Parts",
        :brand => "Brand",
        :code_part => "Code Part",
        :code_parts_advanced => "Code Parts Advanced",
        :ean => "Ean",
        :status_product => "Status Product",
        :name_image => "Name Image"
      )
    ])
  end

  it "renders a list of main_parts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Parts".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Code Part".to_s, :count => 2
    assert_select "tr>td", :text => "Code Parts Advanced".to_s, :count => 2
    assert_select "tr>td", :text => "Ean".to_s, :count => 2
    assert_select "tr>td", :text => "Status Product".to_s, :count => 2
    assert_select "tr>td", :text => "Name Image".to_s, :count => 2
  end
end
