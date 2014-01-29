# == Schema Information
#
# Table name: books
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  description        :text
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    description "MyText"
    user_id 1
  end
end
