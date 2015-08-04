class String
  define_method(:title_case) do
    designated_words = ["the","in", "a", "an", "and", "to", "of", "on", "at"]
    self.downcase!()
    old_array = self.split(" ")
    old_array.each() do |word|
      if word[0].eql?("m").&(word[1].eql?("c"))
        split_word = word.split
        split_word[0].upcase!()
        split_word[2].upcase!()
        word = split_word.join('')
      else
        if old_array[0].eql?(word)
          word.capitalize!()
        else
          if designated_words.include?(word)
          else
            word.capitalize!()
          end
        end
      end
    end
    old_array.join(" ")
  end
end
