require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should validate_presence_of :username
  should validate_presence_of :email
  #should have_one :collection
  should have_many :armies
  should have_many(:units).through(:collections)
end
