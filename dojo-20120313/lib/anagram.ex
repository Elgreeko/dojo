defmodule Anagram do
  def anagram_of(word, [word | tail]) do
    [word] ++ anagram_of(word, tail)
  end

  def anagram_of(word, [head | tail]) do
    if is_anagram(word, head) do
      [head] ++ anagram_of(word, tail)
    else:
      anagram_of(word, tail)
    end
  end

  def anagram_of(_word, []), do: []

  defp is_anagram(first, last) do
    sort(first) == sort(last)
  end

  defp sort(word) do
    :lists.sort(binary_to_list(word))
  end
end