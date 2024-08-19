def ceasar_cipher(string, num)
  string_array = string.split("")
  crypted_array = string_array.map do |letter|
    ascii = letter.ord
    crypted_letter = ascii + num
    if ascii >= 65 && ascii <91
      base = 65
      if crypted_letter > 90        
        crypted_letter = (crypted_letter - base) % 26 + base
        # crypted_letter = crypted_letter - 90 + 65
      end
    elsif ascii >= 97 && ascii<123
      base = 90
      if crypted_letter > 122
        crypted_letter = (crypted_letter - base) % 26 + base
      end
    else
      crypted_letter = ascii
    end
    
    # 97-122
    crypted_letter.chr
  end
  return crypted_array.join
end

puts ceasar_cipher('I am iron maz!!!', 1)












# string_array = string.split("")
# return string_array.map { |letter| letter.ord+num if letter.match?(/[A-Za-z]/)}.join