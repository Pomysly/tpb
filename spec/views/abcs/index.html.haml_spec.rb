require 'rails_helper'

RSpec.describe "abcs/index", :type => :view do
  before(:each) do
    assign(:abcs, [
      Abc.create!(
        :aut_thought => "MyText",
        :mistake => "MyText",
        :adapt_thought => "MyText",
        :user_id => 1
      ),
      Abc.create!(
        :aut_thought => "MyText",
        :mistake => "MyText",
        :adapt_thought => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of abcs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
