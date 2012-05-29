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
end