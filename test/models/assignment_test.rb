require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  should belong_to :unit
  should belong_to :army
end
