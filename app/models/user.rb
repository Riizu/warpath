class User < ActiveRecord::Base
  has_one :collection
  has_many :armies
  has_many :units
  has_many :units, through: :collection

  validates :username, presence: true
  validates :email, presence: true

  has_secure_password
end
