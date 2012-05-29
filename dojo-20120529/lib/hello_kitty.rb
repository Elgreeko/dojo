class HelloKitty
  def initialize(word, times)
    @word = word
    @times = times
  end

  def write
    output = ""
    @word.length.times do |i|
      new_word = @word[i..-1] + @word[0...i]
      output += new_word + "\n"
    end
    output.chomp
  end
end