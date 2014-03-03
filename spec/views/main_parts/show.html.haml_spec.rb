require 'spec_helper'

describe "main_parts/show" do
  before(:each) do
    @main_part = assign(:main_part, stub_model(MainPart))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
