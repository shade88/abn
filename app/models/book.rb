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

class Book < ActiveRecord::Base
  belongs_to :creator,class_name: "User", foreign_key: 'user_id'
  has_many :notes
  has_many :ratings
  has_many :comments, as: :commentable
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
