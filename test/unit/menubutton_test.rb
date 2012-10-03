require 'test_helper'

class MenubuttonTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Menubutton.new.valid?
  end
end
