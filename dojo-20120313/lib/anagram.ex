defmodule Anagram do
  def anagram_of(word, [word | _tail]) do
    [word]
  end

  def anagram_of(word, [_head | tail]) do
    anagram_of(word, tail)
  end

  def anagram_of(_word, _list) do
    []
  end
end