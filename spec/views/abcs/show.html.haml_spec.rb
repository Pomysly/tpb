require 'rails_helper'

RSpec.describe "abcs/show", :type => :view do
  before(:each) do
    @abc = assign(:abc, Abc.create!(
      :aut_thought => "MyText",
      :mistake => "MyText",
      :adapt_thought => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
