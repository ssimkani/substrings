def substrings(string, dictionary)
  substring_hash = {}
  substring_arr = []

  dictionary.map!(&:downcase)
  string = string.downcase.strip
end
