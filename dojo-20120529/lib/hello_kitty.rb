class HelloKitty
  def initialize(word, times)
    @word = word
    @times = times
  end

  def write
    output = ""
    count = 0
    begin
      count += 1
      output += @word + "\n"
    end while(count < @word.length)
    output[0..output.length - 2]
  end
end