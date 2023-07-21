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
def decode(message)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  # for only one character

  morse_code[message] || '?'
end

puts decode('.-')
