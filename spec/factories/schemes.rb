# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scheme do
    name "MyString"
    initiator "MyText"
    emotions "MyText"
    thoughts "MyText"
    behaviour "MyText"
    my_scheme "MyText"
    h_thought_text "MyString"
    r_worry "MyText"
    o_reaction "MyText"
    h_behaviour "MyText"
    belief "MyString"
  end
end
