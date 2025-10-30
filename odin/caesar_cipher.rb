def calculate_cipher_letter index_word, displacement
  index_word + displacement
end

def caesar_cipher text_plain, displacement
    alphabet = Array('a'..'z')
    text_plain_arr = text_plain.downcase.split('')
    cipher_text_arr = []    

    text_plain_arr.each do |text|
      alphabet.each_with_index do |word, index|
        if text == word
          index_cipher_letter = calculate_cipher_letter(index, displacement)
          if index_cipher_letter > 25
            new_index = index_cipher_letter % 26
            cipher_letter = alphabet[new_index]
            cipher_text_arr.push(cipher_letter)
          end
          cipher_letter = alphabet[index_cipher_letter]
          cipher_text_arr.push(cipher_letter)
        end
      end
    end
    cipher_text_arr.join("")
end