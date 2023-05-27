def caesar_cipher(string, shift)
  shift = shift % 26
  cipher = ""

  string.chars.each do |char|
    new_position = char.ord + shift

    shifted_char = case char
                   when 'A'..'Z' then new_position > 90 ? new_position - 26 : new_position
                   when 'a'..'z' then new_position > 122 ? new_position - 26 : new_position
                   else char
                   end

    cipher << shifted_char
  end

  cipher
end

puts caesar_cipher("a", -5)
