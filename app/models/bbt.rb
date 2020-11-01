class Bbt < ActiveRecord::Base
  belongs_to :user
  validates :name, :bubble,:brand, :size, :sugar_amount, :temp, presence: true
end
