class User < ActiveRecord::Base
  has_many :bbts
  has_secure_password
  validates :name, :bubble,:brand, :size, :sugar_amount, :temp, presence: true
end
