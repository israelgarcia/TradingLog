class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, presence: true , format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
  has_many :trades
end
