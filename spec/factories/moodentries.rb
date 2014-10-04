# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :moodentry do
    date "2014-10-04"
    note "MyText"
    mood 1
  end
end
