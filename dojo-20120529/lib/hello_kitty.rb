class HelloKitty
  def initialize(word, count)
    @length = word.length
    @word = word*count
  end

  def shift(i)
    @word[i..-1] + @word[0...i]
  end

  def write
    output = ""
    @length.times do |i|
      output += shift(i) + "\n"
    end
    output.chomp
  end
end