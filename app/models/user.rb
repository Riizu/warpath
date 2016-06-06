class User < ActiveRecord::Base
  has_one :collection

  has_many :armies

  validates :username, presence: true
  validates :email, presence: true
end
