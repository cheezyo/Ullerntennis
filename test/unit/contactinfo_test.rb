require 'test_helper'

class ContactinfoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Contactinfo.new.valid?
  end
end
