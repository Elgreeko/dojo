require "spec_helper"

describe "HelloKitty" do
  it "prints the given word once for one occurence of a one letter word" do
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
end