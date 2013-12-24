class User < ActiveRecord::Base
  has_many :books
  has_many :notes
  #attr_accessor :name
  validates :name, presence: true
end
