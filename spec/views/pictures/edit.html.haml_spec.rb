require 'rails_helper'

RSpec.describe "pictures/edit", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :url => "MyString",
      :product_id => 1,
      :product => nil
    ))
  end

  it "renders the edit picture form" do
    render

    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do

      assert_select "input#picture_url[name=?]", "picture[url]"

      assert_select "input#picture_product_id[name=?]", "picture[product_id]"

      assert_select "input#picture_product_id[name=?]", "picture[product_id]"
    end
  end
end
