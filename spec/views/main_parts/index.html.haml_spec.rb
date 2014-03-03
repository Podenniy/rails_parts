require 'spec_helper'

describe "main_parts/index" do
  before(:each) do
    assign(:main_parts, [
      stub_model(MainPart),
      stub_model(MainPart)
    ])
  end

  it "renders a list of main_parts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
