require 'spec_helper'

describe "cameras/index" do
  before(:each) do
    assign(:cameras, [
      stub_model(Camera,
        :manufacturer => "",
        :name => "Name"
      ),
      stub_model(Camera,
        :manufacturer => "",
        :name => "Name"
      )
    ])
  end

  it "renders a list of cameras" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
