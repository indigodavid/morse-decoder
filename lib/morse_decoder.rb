def decode_char(morse_char)
  {
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
end

def decode_word(morse_word)
  decoded_word = ''
  array = morse_word.split
  array.each { |char| decoded_word = (decoded_word + decode_char(char)).to_s }
  decoded_word
end

def decode_message(morse_message)
  decoded_message = ''
  array = morse_message.split('   ')
  array.each { |word| decoded_message = "#{decoded_message} #{decode_word(word)}" }
  decoded_message.strip
end