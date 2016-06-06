class Army < ActiveRecord::Base
  has_many :assignments
  has_many :units, through: :assignments

  belongs_to :user

  validates :name, presence: true
end
