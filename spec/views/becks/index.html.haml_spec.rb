require 'rails_helper'

RSpec.describe "becks/index", :type => :view do
  before(:each) do
    assign(:becks, [
      Beck.create!(
        :notes => "MyText",
        :value => 1,
        :user_id => 2
      ),
      Beck.create!(
        :notes => "MyText",
        :value => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of becks" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
