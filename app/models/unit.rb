class Unit < ActiveRecord::Base
  has_many :assignments
  has_many :collections
  has_many :users, through: :collections
  has_many :armies, through: :assignments

  validates :name, presence: true
end
