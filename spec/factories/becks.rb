# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beck do
    date "2014-10-04"
    notes "MyText"
    value 1
    user_id 1
  end
end
