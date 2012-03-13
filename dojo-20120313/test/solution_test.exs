Code.require_file "../test_helper", __FILE__

defmodule SolutionTest do
  use ExUnit::Case

  test "returns itself as an anagram" do
    list = ["ball"]
    assert_equal ["ball"], Anagram.anagram_of("ball", list)
  end
end