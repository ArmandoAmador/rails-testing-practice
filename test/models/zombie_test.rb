require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  test 'invalid without a name' do
    z = Zombie.new
    assert !z.valid?, 'Name is not being validated'
  end

  test 'valid with all attributes' do
    z = zombies(:ash)
    assert z.valid?, 'Zombie was not valid'
  end

  test 'invalid name gives error message' do
    z = zombies(:ash)
    z.name = nil
    z.valid?
    assert_match /can't be blank/, z.errors[:name].join, 'Presence error not found on zombie'
  end

  test 'can generate avatar_url' do
    z = zombies(:ash)
    assert_equal "http://zombitar.com/#{z.id}.jpg", z.avatar_url
  end

  test 'should respond to tweets' do
    z = zombies(:ash)
    assert_respond_to z, :tweets
  end

  test 'should contain tweets' do
    z = zombies(:ash)
    assert_equal z.tweets, [tweets(:ash_2), tweets(:ash_1)]
  end

  test 'should contain only tweets that belong to zombie' do
    z = zombies(:ash)
    assert z.tweets.all? { |t| t.zombie == z }
  end
end
