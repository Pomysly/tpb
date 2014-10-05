require 'rails_helper'

RSpec.describe "schemes/edit", :type => :view do
  before(:each) do
    @scheme = assign(:scheme, Scheme.create!(
      :name => "MyString",
      :initiator => "MyText",
      :emotions => "MyText",
      :thoughts => "MyText",
      :behaviour => "MyText",
      :my_scheme => "MyText",
      :h_thought_text => "MyString",
      :r_worry => "MyText",
      :o_reaction => "MyText",
      :h_behaviour => "MyText",
      :belief => "MyString"
    ))
  end

  it "renders the edit scheme form" do
    render

    assert_select "form[action=?][method=?]", scheme_path(@scheme), "post" do

      assert_select "input#scheme_name[name=?]", "scheme[name]"

      assert_select "textarea#scheme_initiator[name=?]", "scheme[initiator]"

      assert_select "textarea#scheme_emotions[name=?]", "scheme[emotions]"

      assert_select "textarea#scheme_thoughts[name=?]", "scheme[thoughts]"

      assert_select "textarea#scheme_behaviour[name=?]", "scheme[behaviour]"

      assert_select "textarea#scheme_my_scheme[name=?]", "scheme[my_scheme]"

      assert_select "input#scheme_h_thought_text[name=?]", "scheme[h_thought_text]"

      assert_select "textarea#scheme_r_worry[name=?]", "scheme[r_worry]"

      assert_select "textarea#scheme_o_reaction[name=?]", "scheme[o_reaction]"

      assert_select "textarea#scheme_h_behaviour[name=?]", "scheme[h_behaviour]"

      assert_select "input#scheme_belief[name=?]", "scheme[belief]"
    end
  end
end
