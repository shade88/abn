# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  user_id    :integer
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    book_id 1
    user_id 1
    text "MyText"
  end
end
