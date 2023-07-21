#     for a string
#     words = message.split('   ')
#     m = ''
#     words.each do |word|
#       letters = word.split(' ')
#       letters.each do |letter|
#         if morse_code.key?(letter)
#           m += morse_code[letter]
#         end
#       end
#       m += ' '
#     end
#     return m.strip
#      end

# morse code with corresponding character
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
def decode_char(message, morse_code)
  morse_code[message] || '?'
end

# for a word
def decode_word(message, morse_code)
  letters = message.split
  word = ''
  letters.each do |letter|
    word += morse_code[letter] if morse_code.key?(letter)
  end
  word
end

def decode_sentence(code, morse_code)
  words = code.split('   ')
  message = ''
  words.each do |word|
    letters = word.split
    letters.each do |letter|
      message += morse_code[letter] if morse_code.key?(letter)
    end
    message += ' '
  end
  message.strip
end

puts decode_char('.-', morse_code)
puts decode_word('-- -.--', morse_code)
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', morse_code)
