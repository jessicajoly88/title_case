class String
  define_method(:title_case) do
    designated_words = ["the","in", "a", "an", "and", "to", "of", "on", "at"]
    self.downcase!()
    old_array = self.split(" ")
    old_array.each() do |word|
      if old_array[0].eql?(word)
        word.capitalize!()
      else
        if designated_words.include?(word)
        else
          word.capitalize!()
        end
      new_array = word.split()
      if new_array[0].eql?("m") && new_array[1].eql?("c")
        new_array[2].upcase!()
        new_array[0].upcase!()
      end
      word = new_array.join("")
    end
    old_array.join(" ")
  end
end
