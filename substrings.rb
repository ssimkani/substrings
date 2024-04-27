def substrings(string, dictionary)
  # Generate all substrings in a given string and return a hash with keys as
  # the substrings and values as the number of times the substring appears in 
  # the initial string (case insensitive).
  #
  # @param string [String] The initial string
  # @param dictionary [Array] An array of dictionary words
  # @return [Hash] The number of times the substring appears in the initial string

  substring_hash = {}
  substring_arr = []

  # convert dictionary and string to lowercase
  dictionary.map!(&:downcase)
  string = string.downcase.strip

  # generate all substrings
  for i in 0...(string.length)
    for t in i...(string.length)
      substring = string[i..t]
      substring_arr.push(substring)
    end
  end

  # check if substring is in dictionary and if it is, add to hash with count
  substring_arr.each do |element|
    if dictionary.include?(element)
      count = substring_arr.count(element)
      substring_hash[element] = count
    end
  end

  # return hash
  substring_hash
end
