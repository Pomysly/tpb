require 'rails_helper'

RSpec.describe "schemes/index", :type => :view do
  before(:each) do
    assign(:schemes, [
      Scheme.create!(
        :name => "Name",
        :initiator => "MyText",
        :emotions => "MyText",
        :thoughts => "MyText",
        :behaviour => "MyText",
        :my_scheme => "MyText",
        :h_thought_text => "H Thought Text",
        :r_worry => "MyText",
        :o_reaction => "MyText",
        :h_behaviour => "MyText",
        :belief => "Belief"
      ),
      Scheme.create!(
        :name => "Name",
        :initiator => "MyText",
        :emotions => "MyText",
        :thoughts => "MyText",
        :behaviour => "MyText",
        :my_scheme => "MyText",
        :h_thought_text => "H Thought Text",
        :r_worry => "MyText",
        :o_reaction => "MyText",
        :h_behaviour => "MyText",
        :belief => "Belief"
      )
    ])
  end

  it "renders a list of schemes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "H Thought Text".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Belief".to_s, :count => 2
  end
end
