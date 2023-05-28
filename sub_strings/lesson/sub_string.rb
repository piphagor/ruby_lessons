def substrings(str, dictionary)
  result = {}

  dictionary.each do |word|
    result[word] = str.scan(/(?=#{word})/i).count
  end

  result.delete_if { |_, value| value == 0 }

  result
end
