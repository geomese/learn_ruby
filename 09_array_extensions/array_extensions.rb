class Array

  def sum
    self.inject 0, :+
  end

  def square
    self.map { |x| x ** 2 }
  end

  def square!
    self.map! { |x| x ** 2 }
  end
end