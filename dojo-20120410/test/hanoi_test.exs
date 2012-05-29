Code.require_file "../test_helper", __FILE__

defmodule HanoiTest do
  use ExUnit.Case

  test "solve with one disc" do
    assert_equal {[],[],[1]}, Hanoi.solve(1)
  end

  test "solve with two discs" do
    assert_equal {[],[],[1, 2]}, Hanoi.solve(2)
  end

  test "generates a tower" do
    assert_equal {[1,2,3],[],[]}, Hanoi.generate(3)
  end

  test "step works with a new tower" do
    assert_equal {[2,3],[],[1]}, Hanoi.step Hanoi.generate(3), 1
  end

  test "does two steps with a new tower" do
    assert_equal {[3],[2],[1]}, Hanoi.step Hanoi.generate(3), 2
  end

  test "does three steps with a new tower" do
    assert_equal {[3],[1,2],[]}, Hanoi.step Hanoi.generate(3), 3
  end

  test "does four steps with a new tower" do
    assert_equal {[],[1,2],[3]}, Hanoi.step Hanoi.generate(3), 4
  end

  test "does five steps with a new tower" do
    assert_equal {[1],[2],[3]}, Hanoi.step Hanoi.generate(3), 5
  end

  test "does six steps with a new tower" do
    assert_equal {[1],[],[2,3]}, Hanoi.step Hanoi.generate(3), 6
  end

  test "does seven steps with a new tower" do
    assert_equal {[],[],[1,2,3]}, Hanoi.step Hanoi.generate(3), 7
  end
end