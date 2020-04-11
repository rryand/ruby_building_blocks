def caesar_cipher(string, shift)
  lowercase_letters = ('a'..'z').to_a
  string.gsub!(/\w/) do |letter|
    new_index = (lowercase_letters.index(letter.downcase) + shift) % 26
    letter.upcase == letter ? lowercase_letters[new_index].upcase : lowercase_letters[new_index]
  end
end
puts caesar_cipher("What a string!", 5)