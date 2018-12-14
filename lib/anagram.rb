class Anagram
  def initialize (word)
    @word = word
  end

  def is_anagram?(word)
    included = true
    word_arr = @word.split("")
    word_arr.each do |letter|

      if !(word.include? (letter) )
        included = false
      end
    end
    if word.length == @word.length
      included
    else
      false
    end
  end

  def match(ana_array)

    ana_array.select do |x|
     is_anagram?(x)
    end
  end

end
