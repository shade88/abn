class User < ActiveRecord::Base
  has_many :books
  has_many :notes
  has_many :ratings
  #attr_accessor :name
  validates :name, presence: true
  has_many :comments
end
