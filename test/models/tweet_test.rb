require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test 'valid with all attributes' do
    tweet = tweets(:ash_1)
    assert tweet.valid?, "tweet isn't valid"
  end

  test 'can detect brains' do
    tweet = tweets(:ash_1)
    tweet.status = 'brains'
    assert tweet.brains?
  end

  test 'contains a zombie' do
    tweet = tweets(:ash_1)
    zombie = zombies(:ash)
    zombie.tweets.all? { |t| t.zombie == zombie }
    assert tweet.zombie == zombie
  end
end
