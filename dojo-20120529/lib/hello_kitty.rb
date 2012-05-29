class HelloKitty
  def initialize(word, times)
    @word = word
    @times = times
  end

  def write
    output = ""
    i = 0
    output += @word + "\n"
    @word.length.times do
      unless i == 0
        new_word = @word[i..-1] + @word[0...i]
        output += new_word + "\n"
      end
      i += 1
    end
    output.chomp
  end
end