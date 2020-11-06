class User < ActiveRecord::Base
  has_many :bbts
  has_secure_password
  validates :username, :email, presence: true, uniqueness: true
end
