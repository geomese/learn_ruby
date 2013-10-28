def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  x.inject(0) { |sum, x| sum + x}
end

def multiply(*num)
  result = 1
  num.each { |num| result = result * num }
  result.to_i
end

