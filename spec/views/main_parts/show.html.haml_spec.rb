require 'spec_helper'

describe "main_parts/show" do
  before(:each) do
    @main_part = assign(:main_part, stub_model(MainPart,
      :name_parts => "Name Parts",
      :brand => "Brand",
      :code_part => "Code Part",
      :code_parts_advanced => "Code Parts Advanced",
      :ean => "Ean",
      :status_product => "Status Product",
      :name_image => "Name Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name Parts/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Code Part/)
    expect(rendered).to match(/Code Parts Advanced/)
    expect(rendered).to match(/Ean/)
    expect(rendered).to match(/Status Product/)
    expect(rendered).to match(/Name Image/)
  end
end
