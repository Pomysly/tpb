require 'rails_helper'

RSpec.describe "abcs/edit", :type => :view do
  before(:each) do
    @abc = assign(:abc, Abc.create!(
      :aut_thought => "MyText",
      :mistake => "MyText",
      :adapt_thought => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit abc form" do
    render

    assert_select "form[action=?][method=?]", abc_path(@abc), "post" do

      assert_select "textarea#abc_aut_thought[name=?]", "abc[aut_thought]"

      assert_select "textarea#abc_mistake[name=?]", "abc[mistake]"

      assert_select "textarea#abc_adapt_thought[name=?]", "abc[adapt_thought]"

      assert_select "input#abc_user_id[name=?]", "abc[user_id]"
    end
  end
end
