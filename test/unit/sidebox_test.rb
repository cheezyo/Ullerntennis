require 'test_helper'

class SideboxTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Sidebox.new.valid?
  end
end
