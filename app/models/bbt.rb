class Bbt < ActiveRecord::Base
  belongs_to :friends
  belongs_to :user, through: :friends
end
