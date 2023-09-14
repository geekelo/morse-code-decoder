def decode_char(char)
  code_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  code_morse[char]
end

def decode_word(word)
  word = word.split
  decoded_word = ''
  word.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_sentence(sent)
  decoded_sent = ''
  sent = sent.split('   ')
  sent.each do |word|
    decoded_sent += " #{decode_word(word)}"
  end
  puts decoded_sent
end

decode_sentence(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
