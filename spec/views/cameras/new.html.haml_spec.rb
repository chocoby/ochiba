require 'spec_helper'

describe "cameras/new" do
  before(:each) do
    assign(:camera, stub_model(Camera,
      :manufacturer => "",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new camera form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cameras_path, :method => "post" do
      assert_select "input#camera_manufacturer", :name => "camera[manufacturer]"
      assert_select "input#camera_name", :name => "camera[name]"
    end
  end
end
