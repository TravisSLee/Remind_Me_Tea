class Friends < ActiveRecord::Base
  has_many :Bbt
  belongs_to :user 
end
