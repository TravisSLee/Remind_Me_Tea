class User < ActiveRecord::Base
  has_many :bbts
  has_secure_password
end
