require "spec_helper"

describe "HelloKitty" do
  it "prints the given word once" do
    kitty = HelloKitty.new 'w',1
    kitty.write.should == 'w'  
  end
end