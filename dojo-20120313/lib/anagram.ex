defmodule Anagram do
  def anagram_of(word, list) do
    Enum.filter(list, is_anagram(word, &1))
  end

  defp is_anagram(word, candidate) do
    sort(word) == sort(candidate)
  end

  defp sort(word) do
    :lists.sort(binary_to_list(word))
  end
end