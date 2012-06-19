Code.require_file "../test_helper", __FILE__

defmodule RpnTest do
  use ExUnit.Case

  test "solve with one item" do
    assert Rpn.calc("1") == 1
  end

  test "solve with one operation" do
    assert Rpn.calc("1 2 +") == 3
  end
end