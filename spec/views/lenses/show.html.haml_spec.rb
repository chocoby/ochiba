require 'spec_helper'

describe "lenses/show" do
  before(:each) do
    @lens = assign(:lens, stub_model(Lens,
      :manufacturer => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
