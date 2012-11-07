require 'spec_helper'

describe "cameras/show" do
  before(:each) do
    @camera = assign(:camera, stub_model(Camera,
      :manufacturer => "",
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
