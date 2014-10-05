require 'rails_helper'

RSpec.describe "schemas/show", :type => :view do
  before(:each) do
    @schema = assign(:schema, schema.create!(
      :name => "Name",
      :initiator => "MyText",
      :emotions => "MyText",
      :thoughts => "MyText",
      :behaviour => "MyText",
      :my_schema => "MyText",
      :h_thought_text => "H Thought Text",
      :r_worry => "MyText",
      :o_reaction => "MyText",
      :h_behaviour => "MyText",
      :belief => "Belief"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/H Thought Text/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Belief/)
  end
end
