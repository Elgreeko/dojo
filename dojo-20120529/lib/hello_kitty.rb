class HelloKitty
  def initialize(word, times)
    @word = word
    @times = times
  end

  def write
    output = ""
    @word.length.times do
      output += @word + "\n"
    end
    output.chomp
  end
end