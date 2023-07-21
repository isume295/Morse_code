for word 
      letters = message.split(' ')
      word = ''
      letters.each do |letter|
        if morse_code.key?(letter)
          word += morse_code[letter]
        end
      end
      return word
    
    for a string
    words = message.split('   ')
    m = ''
    words.each do |word|
      letters = word.split(' ')
      letters.each do |letter|
        if morse_code.key?(letter)
          m += morse_code[letter]
        end
      end
      m += ' '
    end
    return m.strip
     end