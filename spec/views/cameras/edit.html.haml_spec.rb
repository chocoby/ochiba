require 'spec_helper'

describe "cameras/edit" do
  before(:each) do
    @camera = assign(:camera, stub_model(Camera,
      :manufacturer => "",
      :name => "MyString"
    ))
  end

  it "renders the edit camera form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cameras_path(@camera), :method => "post" do
      assert_select "input#camera_manufacturer", :name => "camera[manufacturer]"
      assert_select "input#camera_name", :name => "camera[name]"
    end
  end
end
