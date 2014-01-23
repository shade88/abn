class Book < ActiveRecord::Base
  belongs_to :creator,class_name: "User", foreign_key: 'user_id'
  has_many :notes
  has_many :ratings
  has_many :comments, as: :commentable
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
