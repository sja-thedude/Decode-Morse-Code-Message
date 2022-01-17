Morse_Decode = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_word(x)
  result = ''
  x = x.split
  x.each do |key|
    result += Morse_Decode[key]
  end
  result.upcase
end

def decode(str)
  result = ''
  str.strip.tr('/', ' ').split('  ').each do |n|
    arr = []
    n.split.each do |t|
      arr.push(Morse_Decode[t])
    end
    result += "#{arr.join} "
  end
  result.upcase
end

puts decode_word('.-')
puts decode_word('-- -.--')
puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
puts decode('-- -.--   -. .- -- .  .. ...  ... .--- .-')
puts decode('-. .- -- .  --- ..-.  -- -.--  -.-. --- -.. .. -. --.  .--. .- .-. - -. . .-.  .. ...  --. --- .-. -.. --- -.')
