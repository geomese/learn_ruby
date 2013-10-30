def translate(x)
  alphabet = ("a".."z").to_a
  vowel = %w[a e i o u]
  consonant = alphabet - vowel
  
  if vowel.include?(x[0])
    x + 'ay'
  elsif consonant.include?(x[0]) && consonant.include?(x[1])
    x[2..-1] + x[0..1] + 'ay'
  elsif consonant.include?(x[0])
    x[1..-1] + x[0] + 'ay'
  # attempting more pig latin
  #elsif consonant.include?(x[0]) && consonant.include?(x[1]) && consonant.include?(x[2])
  #  x[3..-1] + x[0..1] + 'ay'
  else
    x
  end
end
