class Book < ActiveRecord::Base
  belongs_to :creator,class_name: "User", foreign_key: 'user_id'
  has_many :notes
  has_many :ratings
  has_many :comments, as: :commentable
end
