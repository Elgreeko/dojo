Code.require_file "../test_helper", __FILE__

defmodule RpnTest do
  use ExUnit.Case

  test "solve with one item" do
    assert Rpn.calc("1") == 1
  end

  test "solve with one addition" do
    assert Rpn.calc("1 2 +") == 3
  end

  test "solve with one subtraction" do
    assert Rpn.calc("1 2 -") == -1
  end

  test "solve with one multiplication" do
    assert Rpn.calc("1 2 *") == 2
  end

  test "solve with one division" do
    assert Rpn.calc("2 2 /") == 1
  end

  test "solve with two consecutive operations" do
    assert Rpn.calc("5 1 2 - +") == 4
  end

  test "solve with two non-consecutive operations" do
    assert Rpn.calc("8 3 - 15 +") == 20
  end
end