require 'spec_helper'

describe "lenses/new" do
  before(:each) do
    assign(:lens, stub_model(Lens,
      :manufacturer => nil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new lens form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lenses_path, :method => "post" do
      assert_select "input#lens_manufacturer", :name => "lens[manufacturer]"
      assert_select "input#lens_name", :name => "lens[name]"
    end
  end
end
