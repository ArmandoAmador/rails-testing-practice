require 'test_helper'
require 'string_extension'

class StringExtensionTest < ActiveSupport::TestCase
  test 'test_is_number' do
    assert '3'.number?
  end

  test 'test_is_not_number' do
    assert !'Blah'.number?
  end
end
