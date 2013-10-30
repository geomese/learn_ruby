def reverser
  yield.gsub(/\w+/) { |x| x.reverse} 
end

def adder(value = 1)
  n = yield
  n += value
end

n = " "
def repeater(value = 1)
  value.times {yield}
end