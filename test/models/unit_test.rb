require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  should validate_presence_of :name
  should have_many :collections
  should have_many :armies
  should have_many(:users).through(:collections)
  should have_many(:armies).through(:assignments)
end
