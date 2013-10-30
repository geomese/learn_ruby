class Temperature
  attr_accessor :f, :c

  def initialize(args)
    @f = args[:f]
    @c = args[:c]
  end

  def to_fahrenheit
    if f == nil
      (c * (9.0/5.0) + 32).round(0)
    else
      f
    end
  end

  def to_celsius
    if c == nil
      ((f.to_i - 32) * 5.0/9.0).round(0)
    else
      c
    end
  end

  def self.in_fahrenheit(temp)
    Temperature.new({:f => temp})
  end

  def self.in_celsius(temp)
    self.new({:c => temp})
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f = temp
  end
end

class Celsius < Temperature
  def initialize(temp)
    @c = temp
  end
end
