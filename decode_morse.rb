def decode_char(char)
  @morse_decode = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
                  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
                  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                  '..-' => 'U', '...-' => 'v', '.--' => 'W', '-..-' => 'X',
                  '-.--' => 'Y', '--..' => 'Z' }
  @morse_decode.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  char_new = ''
  full_word = ''
  word = word.split
  word.each do |letter|
    char_new = if letter.to_s == '/'
      ' '
    else
      decode_char(letter.to_s)
    end
full_word += char_new
end
full_word
end

def decode(msg)
  word_new = ''
  full_msg = ''
  msg_split = msg.split('   ')
  msg_split.each do |word|
    word_new = decode_word(word)
    full_msg += "#{word_new} "
  end
  puts full_msg
end

puts decode_word('.-')
puts decode_word('-- -.--')
puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
puts decode('-- -.--   -. .- -- .   .. ...   ... .--- .-')
puts decode('-.-. --- -.. .. -. --.   .--. .- .-. - -. . .-.   .. ...   --. --- .-. -.. --- -.')
