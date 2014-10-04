require 'rails_helper'

RSpec.describe "pictures/index", :type => :view do
  before(:each) do
    assign(:pictures, [
      Picture.create!(
        :url => "Url",
        :product_id => 1,
        :product => nil
      ),
      Picture.create!(
        :url => "Url",
        :product_id => 1,
        :product => nil
      )
    ])
  end

  it "renders a list of pictures" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
