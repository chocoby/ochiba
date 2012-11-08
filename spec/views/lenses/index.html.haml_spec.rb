require 'spec_helper'

describe "lenses/index" do
  before(:each) do
    assign(:lenses, [
      stub_model(Lens,
        :manufacturer => nil,
        :name => "Name"
      ),
      stub_model(Lens,
        :manufacturer => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of lenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
