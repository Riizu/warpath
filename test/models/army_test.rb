require 'test_helper'

class ArmyTest < ActiveSupport::TestCase
    should validate_presence_of :name
    should have_many :assignments
    should have_many(:units).through(:assignments)
end
