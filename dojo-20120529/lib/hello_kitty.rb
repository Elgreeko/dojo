class HelloKitty
  def initialize(word, count)
    @word = ''
    @length = word.length
    count.times do
      @word += word
    end
  end

  def write
    output = ""
    @length.times do |i|
      new_word = @word[i..-1] + @word[0...i]
      output += new_word + "\n"
    end
    output.chomp
  end
end