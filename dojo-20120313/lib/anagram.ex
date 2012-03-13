defmodule Anagram do
  def anagram_of(word, list) do
    Enum.filter(list, fn(c, do: sort(word) == sort(c)))
  end

  defp sort(word) do
    :lists.sort(binary_to_list(word))
  end
end