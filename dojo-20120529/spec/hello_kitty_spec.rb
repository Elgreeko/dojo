require "spec_helper"

describe HelloKitty do
  context "with a single count" do
    it "prints itself with a single letter" do
      kitty = HelloKitty.new 'w', 1
      kitty.write.should == 'w'
    end

    it "prints the word twice for a word with repeated letters" do
      kitty = HelloKitty.new 'ww', 1
      kitty.write.should == "ww\nww"
    end

    it "prints the word thrice for a word with repeated letters with length three" do
      kitty = HelloKitty.new 'www', 1
      kitty.write.should == "www\nwww\nwww"
    end

    it "prints the word twice for a word with different letters" do
      kitty = HelloKitty.new 'ab', 1
      kitty.write.should == "ab\nba"
    end

    it "prints the word thrice for a word with different letters" do
      kitty = HelloKitty.new 'abc', 1
      kitty.write.should == "abc\nbca\ncab"
    end
  end
  it "duplicate the word given the times equals two" do
    kitty = HelloKitty.new 'a', 2
    kitty.write.should == "aa"
  end

  it "multiplies the word by the given number" do
    kitty = HelloKitty.new 'a', 5
    kitty.write.should == "aaaaa"
  end

  it "multiplies a bigger word by the given number" do
    kitty = HelloKitty.new 'ab', 3
    kitty.write.should == "ababab\nbababa"
  end
end