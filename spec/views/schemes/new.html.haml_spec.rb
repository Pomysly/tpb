require 'rails_helper'

RSpec.describe "schemas/new", :type => :view do
  before(:each) do
    assign(:schema, schema.new(
      :name => "MyString",
      :initiator => "MyText",
      :emotions => "MyText",
      :thoughts => "MyText",
      :behaviour => "MyText",
      :my_schema => "MyText",
      :h_thought_text => "MyString",
      :r_worry => "MyText",
      :o_reaction => "MyText",
      :h_behaviour => "MyText",
      :belief => "MyString"
    ))
  end

  it "renders new schema form" do
    render

    assert_select "form[action=?][method=?]", schemas_path, "post" do

      assert_select "input#schema_name[name=?]", "schema[name]"

      assert_select "textarea#schema_initiator[name=?]", "schema[initiator]"

      assert_select "textarea#schema_emotions[name=?]", "schema[emotions]"

      assert_select "textarea#schema_thoughts[name=?]", "schema[thoughts]"

      assert_select "textarea#schema_behaviour[name=?]", "schema[behaviour]"

      assert_select "textarea#schema_my_schema[name=?]", "schema[my_schema]"

      assert_select "input#schema_h_thought_text[name=?]", "schema[h_thought_text]"

      assert_select "textarea#schema_r_worry[name=?]", "schema[r_worry]"

      assert_select "textarea#schema_o_reaction[name=?]", "schema[o_reaction]"

      assert_select "textarea#schema_h_behaviour[name=?]", "schema[h_behaviour]"

      assert_select "input#schema_belief[name=?]", "schema[belief]"
    end
  end
end
