class User < ActiveRecord::Base
  has_many :friends
  has_many :bbts, through: :friends
  has_secure_password
end
