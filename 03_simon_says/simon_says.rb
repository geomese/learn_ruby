def echo(x)
  "#{x}"
end

def shout(x)
  "#{x}".upcase
end

def repeat(x, num = 2)
  ("#{x} " * num).strip
end

def start_of_word(x, y)
  "#{x}"[0..y-1]
end

def first_word(x)
  x.split[0..-2].join(' ')
end

def titleize(x)
  small_words = %w[over the and]

  x.split.map.with_index do |w, i|
    unless (small_words.include? w) and (i > 0)
      w.capitalize
    else
      w
    end
  end.join(" ")
end