class String
  define_method(:title_case) do
    designated_words = ["the", "a", "an", "and", "to", "of", "on", "at"]
    old_array = self.split(" ")
    old_array.each() do |word|
      if designated_words.include?(word)
      else
        word.capitalize!()
      end
    end
    old_array.join(" ")
  end
end
