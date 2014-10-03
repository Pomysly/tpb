require 'rails_helper'

RSpec.describe "pictures/new", :type => :view do
  before(:each) do
    assign(:picture, Picture.new(
      :url => "MyString",
      :product => nil
    ))
  end

  it "renders new picture form" do
    render

    assert_select "form[action=?][method=?]", pictures_path, "post" do

      assert_select "input#picture_url[name=?]", "picture[url]"

      assert_select "input#picture_product_id[name=?]", "picture[product_id]"
    end
  end
end
