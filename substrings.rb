def substrings(string, dictionary)
  substring_hash = {}
  substring_arr = []

  dictionary.map!(&:downcase)
  string = string.downcase.strip

  for i in 0...(string.length)
    for t in i...(string.length)
      substring = string[i..t]
      substring_arr.push(substring)
    end
  end
end
