require 'test_helper'
require 'string_extension'

class StringExtensionTest < ActiveSupport::TestCase
  test 'test_is_number' do
    assert '3'.number?
  end

  test 'test_is_not_number' do
    assert !'Blah'.number?
  end

  test 'test_humanize_function_added_to_string' do
    assert_respond_to 'blah', :humanize
  end

  test 'test_humanize_returns_something' do
    assert_not_nil 'Yo'.humanize, 'humanize is returning nil'
  end

  test 'test_humanize' do
    assert_equal 'Likes me brains!', 'LIKES ME BRAINS!'.humanize
  end

  test 'test_just_for_brains' do
    assert_match(/brains/, 'LIKES ME BRAINS!'.humanize)
  end

  test 'test_zombie_in_humanize_raises_error' do
    assert_raise(RuntimeError) { 'zombie'.humanize }
  end
end
