class String
  def number?
    self =~ /^\d+$/
  end

  def humanize
    if self =~ /zombie/
      raise RuntimeError
    else
      downcase.capitalize
    end
  end
end
