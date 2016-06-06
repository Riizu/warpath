require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  should belong_to :user
  should belong_to :unit
end
