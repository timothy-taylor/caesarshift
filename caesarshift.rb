def wrapping_utility(code, shift)
  new_shift = ( shift % 26 ) + 26
  ascii_anchor = ( code >= 97 ) ? 97 : 65
  difference = code - ascii_anchor
  remainder = ( difference + new_shift ) % 26
  return (remainder + ascii_anchor)
end

def char_shift(char, shift)
  char_code = char.ord 
  if ( char_code >= 65 && char_code <= 90 )
    new_code = wrapping_utility(char_code,shift)
    new_character = new_code.chr
  elsif ( char_code >= 97 && char_code <= 122 )
    new_code = wrapping_utility(char_code,shift)
    new_character = new_code.chr
  else
    return char
  end
end

def caesar_cipher(string, shift)
  puts "entering the cipher..."
  word_array = string.split('')
  shifted_array = word_array.map{ |letter| char_shift(letter, shift) }
  puts shifted_array.join('')
end

puts "Enter a phrase to encrypt"
word = gets
puts "Please enter a number as the key"
number = gets.to_i
caesar_cipher(word, number)
