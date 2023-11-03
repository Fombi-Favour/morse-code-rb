@dictionary = {
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
  '--..' => 'Z'
}

def get_letter(letter)
  @dictionary[letter]
end

def decode_word(word)
  @current_word = ''
  word.split(' ').each do |letter|
    decoded_letter = get_letter(letter)
    @current_word += decoded_letter if decoded_letter
  end
  @current_word
end

def decode_message(message)
  words = message.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_message = decoded_words.join(' ')
  print decoded_message
end

message_code = ".-   -... --- -..-   ..-. ..- .-.. .-..    --- ..-.    .-. ..- -... .. . ..."
decode_message(message_code)
