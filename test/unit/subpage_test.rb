require 'test_helper'

class SubpageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Subpage.new.valid?
  end
end
