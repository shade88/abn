class User < ActiveRecord::Base
  has_many :books
  #attr_accessor :name
  validates :name, presence: true
end
