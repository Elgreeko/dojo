class HelloKitty
  def initialize(word, count)
    @length = word.length
    @word = word * count
  end

  def shift(i)
    @word[i..-1] + @word[0...i]
  end

  def write
    @length.times.map do |i|
      shift(i)
    end.join("\n")
  end
end