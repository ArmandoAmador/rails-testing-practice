class Tweet < ActiveRecord::Base
  belongs_to :zombie

  def brains?
    status =~ /(brains|breins)/
  end
end
