class Friend < ActiveRecord::Base
  has_many :bbts
  belongs_to :user
end
