Code.require_file "../test_helper", __FILE__

defmodule SolutionTest do
  use ExUnit::Case

  test "the solution works" do
    assert_equal :ok, Solution.it_works
  end
end