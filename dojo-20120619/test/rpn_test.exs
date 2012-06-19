Code.require_file "../test_helper", __FILE__

defmodule RpnTest do
  use ExUnit.Case

  test "solves with one item" do
    assert Rpn.calc("1") == 1
  end

  test "solves with one addition" do
    assert Rpn.calc("1 2 +") == 3
  end

  test "solves with one subtraction" do
    assert Rpn.calc("1 2 -") == -1
  end

  test "solves with one multiplication" do
    assert Rpn.calc("1 2 *") == 2
  end

  test "solves with one division" do
    assert Rpn.calc("2 2 /") == 1
  end

  test "solves with two consecutive operations" do
    assert Rpn.calc("5 1 2 - +") == 4
  end

  test "solves with two non-consecutive operations" do
    assert Rpn.calc("8 3 - 15 +") == 20
  end

  test "solves a complex expression" do
    assert Rpn.calc("10 5 + 2 * 3 - 42 7 / + 3 3 ^ +") == 60
  end
end