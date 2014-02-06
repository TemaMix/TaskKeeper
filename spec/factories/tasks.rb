# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    id 1
    title "MyString"
    text "MyText"
    complete false
  end
end
