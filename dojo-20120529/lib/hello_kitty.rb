class HelloKitty
  def initialize(word, count)
    @length = word.length
    @line = word * count
  end

  def write
    @length.times.map do |i|
      rotate(i)
    end.join("\n")
  end

  private

  def rotate(size)
    @line[size..-1] + @line[0...size]
  end
end