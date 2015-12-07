require 'test_helper'
require 'string_extension'

class StringExtensionTest < ActiveSupport::TestCase
  test 'test_is_number' do
    assert '3'.is_number?
  end

  test 'test_is_not_number' do
    assert !'Blaj'.is_number?
  end
end
