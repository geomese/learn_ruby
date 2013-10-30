class Book
  attr_accessor :title

  def initialize(title=nil)
    @title = title
  end

  def title=(string)
    first_word = 0
    exceptions = %w[a the an in and of]
    words = string.split

    words.each do |x|
      if first_word == 0
        x.capitalize!
        first_word += 1
      elsif !exceptions.include?(x)
        x.capitalize!
      else
        x
      end
    end
    @title = words.join(" ")
  end
end

