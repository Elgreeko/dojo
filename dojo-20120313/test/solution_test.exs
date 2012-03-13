Code.require_file "../test_helper", __FILE__

defmodule SolutionTest do
  use ExUnit::Case

  test "returns itself as an anagram" do
    list = ["ball"]
    assert_equal ["ball"], Anagram.anagram_of("ball", list)
  end

  test "returns an empty list when we don't have an anagram" do
    list = ["ball"]
    assert_equal [], Anagram.anagram_of("socialmedia", list)
  end

  test "returns only the match anagram" do
    list = ["ball","house"]
    assert_equal ["house"], Anagram.anagram_of("house",list)
  end
end