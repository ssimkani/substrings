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
  
  substring_arr.each do |element|
    if dictionary.include?(element)
      count = substring_arr.count(element)
      substring_hash[element] = count
    end
  end
  
  substring_hash
end
