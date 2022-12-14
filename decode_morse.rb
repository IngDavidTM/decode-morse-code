HASH = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  '.-.-.-' => 'Stop',
  '--..--' => ',',
  '..--..' => '?'
}.freeze

def letter_decoder(letter)
  HASH[letter]
end

puts letter_decoder('.-..')
# Should print 'L'

def word_decoder(word)
  result = ''
  word.split.each { |character| result += letter_decoder(character) }
  result
end

puts word_decoder('.-. ..- -... .. . ...')
# Should print 'RUBIES'

def sentence_decoder(string)
  result = ''
  string.split('   ').each { |word| result += "#{word_decoder(word)} " }
  result
end

puts sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# Should print 'A BOX FULL OF RUBIES'
